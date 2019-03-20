import React, { Component } from "react";
import _ from "lodash";
import cx from "classnames";
import ScatterJS from "scatterjs-core";
import ScatterEOS from "scatterjs-plugin-eosjs";
import EOS from "eosjs";
import "./App.css";
import { ReactComponent as Circle } from "./circle.svg";
import { ReactComponent as Times } from "./times.svg";

ScatterJS.plugins(new ScatterEOS());
const scatter = ScatterJS.scatter;

const network = {
  blockchain: "eos",
  protocol: "http",
  host: "jungle2.cryptolions.io",
  port: 80,
  chainId: "e70aaab8997e1dfce58fbfac80cbbb8fecec7b99cf982a9444273cbc64c41473"
};

// const TONY = "tony11111111";
const TONY = "host11111111";
// const JOHN = "john11111111";
const JOHN = "challenge111";

class App extends Component {
  state = {
    host: TONY,
    challenger: JOHN,
    turn: "",
    board: [],
    account: null,
    winner: "none"
  };

  async componentDidMount() {
    const connected = await scatter.connect(
      `Tic Tac Toe ${window.location.port}`
    );
    if (connected) {
      await window.scatter.getIdentity({ accounts: [network] });
      const account = window.scatter.identity.accounts.find(
        x => x.blockchain === "eos"
      );
      this.setState({
        account
      });
    }

    this.eos = scatter.eos(network, EOS);
    setInterval(async () => {
      const data = await this.eos.getTableRows({
        json: true,
        // code: "tictactoe123",
        code: "jimmy2tictac",
        scope: TONY,
        table: "games"
      });
      if (data && data.rows[0]) {
        const game = data.rows[0];
        this.setState({
          turn: game.turn,
          board: game.board,
          winner: game.winner
        });
      }
    }, 2000);
  }

  move = async i => {
    const row = Math.floor(i / 3);
    const col = i % 3;
    const account = this.state.account;
    // const contract = await this.eos.contract("tictactoe123");
    const contract = await this.eos.contract("jimmy2tictac");
    contract.move(JOHN, TONY, account.name, row, col, {
      authorization: [`${account.name}@${account.authority}`]
    });
  };

  render() {
    const { account, host, challenger, turn, board, winner } = this.state;
    return (
      <div className="App">
        <div className="title">Tic Tac Toe</div>
        {account && (
          <div className="accountName">{`Welcome ${account.name}`}</div>
        )}
        <div className="players">
          <div
            className={cx("player", { active: turn === host })}
          >{`Host: ${TONY}`}</div>
          <div
            className={cx("player", { active: turn === challenger })}
          >{`Challenger: ${JOHN}`}</div>
        </div>
        <div className="board">
          {_.range(9).map(i => {
            return (
              <div key={i} className="tile" onClick={() => this.move(i)}>
                {board[i] === 1 ? (
                  <Circle />
                ) : board[i] === 2 ? (
                  <Times />
                ) : null}
              </div>
            );
          })}
        </div>
        <div className="winner">{`Winner: ${winner}`}</div>
      </div>
    );
  }
}

export default App;
