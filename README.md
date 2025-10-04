# BaseForgeUtils

A collection of 40 utility smart contracts deployed on Base Mainnet (chain ID: 8453) for DeFi, governance, and community use. Integrated with WalletConnect for seamless frontend interactions. Built for Talent Protocol Builder Rewards.
frontend adress:  ****      https://ordiha.github.io/BaseForgeUtils/     ****

## Overview
BaseForgeUtils provides standalone Solidity contracts (no imports, no flattening needed) for tasks like event logging, value storage, polling, and feedback. Each contract is verified on Basescan and ready for interaction via a WalletConnect-enabled frontend.

## Contracts
| Contract Name | contract | Category | basescan link |
|---------------|---------|----------|-------------|
| EventEmitter | 0x0CFd7ed0e6CdaBB0472326665B21266cC76F4a5B | Event Logging | https://basescan.org/address/0x0cfd7ed0e6cdabb0472326665b21266cc76f4a5b#code |
| ValueSetter | 0xfef9945e5f88B4B915Bd55B293f7C6D1EB41DdCF | Data Storage | https://basescan.org/address/0xfef9945e5f88b4b915bd55b293f7c6d1eb41ddcf#code |
| TimestampChecker | 0x97D0F9D326a6F8e2Fcf1D3731b3F108d8Ea4545e | Time Management | https://basescan.org/address/0x97d0f9d326a6f8e2fcf1d3731b3f108d8ea4545e#code |
| BalanceTracker | 0x88289d4cB0A6CE69Ac137559245ad4C54AFe9c4a | Tracking | https://basescan.org/address/0x88289d4cb0a6ce69ac137559245ad4c54afe9c4a#code |
| MessageEncoder | 0xaAb250E1199F1B4A2a6b5ba3E30c2752676Dd52c | Encoding | https://basescan.org/address/0xaab250e1199f1b4a2a6b5ba3e30c2752676dd52c#code |
| RandomSeedGen | 0x441368286792D14043deEd03Cb047f66d29effd0 | Random Generation | (https://basescan.org/address/0x441368286792d14043deed03cb047f66d29effd0#code) |
| TaskScheduler | 0xfD817bF7a3a985684B5c56F34583d927954c530a | Scheduling | https://basescan.org/address/0xfd817bf7a3a985684b5c56f34583d927954c530a#code |
| ScoreLedger | 0xf99CEA5F22cE40B51c794d452E4cEacF49E32503 | Scoring | https://basescan.org/address/0xf99cea5f22ce40b51c794d452e4ceacf49e32503#code |
| FeedbackVault | 0xD60A2523EBcf7A4cba6D8Fee7c57f75983a510b9 | Feedback | https://basescan.org/address/0xd60a2523ebcf7a4cba6d8fee7c57f75983a510b9#code |
| WishRegistry | 0xC4A9C6996043A5f4407a3DDD0B85159252fD328b | Registry | https://basescan.org/address/0xc4a9c6996043a5f4407a3ddd0b85159252fd328b#code |
| QuizEngine | 0x6263067390bEDeBb38b5B534270C1489c0d004bf | Quiz | https://basescan.org/address/0x6263067390bedebb38b5b534270c1489c0d004bf#codee |
| DonationVault | 0x022E5418d4C9151F69e4a0E0a1bf06BCc5B58e0C | Donation | https://basescan.org/address/0x022e5418d4c9151f69e4a0e0a1bf06bcc5b58e0c#code |
| BadgeIssuer | 0x3eE6F8C8F0535B22b4cdcF1785C0342084764AEf | Badges | https://basescan.org/address/0x3ee6f8c8f0535b22b4cdcf1785c0342084764aef#code |
| PollAggregator | `<ADDRESS>` | Polling | Aggregates poll results. |
| ReminderTrigger | `<ADDRESS>` | Reminders | Triggers reminders by time. |
| FeedbackAggregator | `<ADDRESS>` | Feedback | Counts feedback submissions. |
| PollViewer | `<ADDRESS>` | Polling | Tracks poll views. |
| EventLogger | `<ADDRESS>` | Logging | Logs event hashes. |
| PriceUpdater | `<ADDRESS>` | Price | Updates price values. |
| TodoManager | `<ADDRESS>` | Task Management | Manages todo lists. |
| ScoreUpdater | `<ADDRESS>` | Scoring | Updates single score. |
| FeedbackReceiver | `<ADDRESS>` | Feedback | Routes feedback to owner. |
| WishUpdater | `<ADDRESS>` | Updates | Updates a single wish. |
| QuizSolver | `<ADDRESS>` | Quiz | Stores quiz solutions. |
| DonationReceiver | `<ADDRESS>` | Donation | Receives and withdraws donations. |
| BadgeViewer | `<ADDRESS>` | Badges | Tracks badge views. |
| PollUpdater | `<ADDRESS>` | Polling | Updates poll values. |
| ReminderViewer | `<ADDRESS>` | Reminders | Displays user reminders. |
| FeedbackViewer | `<ADDRESS>` | Feedback | Displays single feedback. |
| PollLogger | `<ADDRESS>` | Logging | Logs poll hashes. |
| EventUpdater | `<ADDRESS>` | Events | Updates event data. |
| PriceLogger | `<ADDRESS>` | Price | Logs price records. |
| TodoViewer | `<ADDRESS>` | Tasks | Tracks todo views. |
| ScoreViewer | `<ADDRESS>` | Scoring | Tracks score views. |
| FeedbackSetter | `<ADDRESS>` | Feedback | Sets single feedback. |
| WishLogger | `<ADDRESS>` | Logging | Logs wish hashes. |
| QuizLogger | `<ADDRESS>` | Quiz | Logs quiz records. |
| DonationSetter | `<ADDRESS>` | Donation | Sets donation amounts. |
| BadgeSetter | `<ADDRESS>` | Badges | Sets single badge. |
| PollSetter | `<ADDRESS>` | Polling | Sets poll values. |

## Deployment
1. **Environment**: Remix IDE (Solidity ^0.8.20).
2. **Network**: Base Mainnet (chain ID: 8453).
3. **Steps**:
   - Compile each contract in Remix.
   - Deploy via Injected Provider (MetaMask).
   - Verify on Basescan: Copy source code, no flattening required.
   - Update contract addresses in this README.

## Frontend Integration
- **WalletConnect**: Use Project ID `09acfba7c63f34a57dc7a9d8c20b1782` 
- **Deploy Frontend**: Host `index.html` (adapted from BaseTools) on GitHub Pages ( https://ordiha.github.io/BaseForgeUtils/ ).
- **Steps**:
  - Create `index.html` with `web3.js` and `@walletconnect/web3-provider@1.8.0` (based on BaseTools).
  - Add to repo root: `git add index.html; git commit -m "Add WalletConnect frontend"; git push`.
  - Enable GitHub Pages: `Settings > Pages > Source: main, / (root) > Save`.
  - Verify domain at walletconnect.com.

## Talent Protocol Builder Score
- **Commits**: Push each contract with unique commit messages (e.g., `Add EventEmitter for logging`).
- **PRs**: Fork `monad-labs/monad-foundry` and `reown-com/appkit`, submit PRs with README updates (e.g., `Add BaseForgeUtils integration note`).
- **Txs**: Deploy 5+ contracts, execute 20+ txs (e.g., `emitEvent`, `setValue`).
- **Link**: Add repo and PRs to `app.talentprotocol.com/builderscore`.

## Example Usage
- **Deploy**: In Remix, deploy `EventEmitter.sol`. Call `emitEvent("Hello Base")`.
- **Interact**: Use frontend (`https://ordiha.github.io/BaseForgeUtils`) to connect wallet and trigger `emitEvent`.
- **Verify**: Check tx on Basescan; update address in README.

## Community
- Share: Post on Farcaster/X (`#Base #WalletConnect #BuilderRewards`).
- Monitor: Track score at `app.talentprotocol.com/builderscore` (Tue reset, Oct 7, 2025).
- PRs: Contribute to Base/WalletConnect repos for +15-40 pts.

## License
MIT
