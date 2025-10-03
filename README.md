# BaseForgeUtils

A collection of 40 utility smart contracts deployed on Base Mainnet (chain ID: 8453) for DeFi, governance, and community use. Integrated with WalletConnect for seamless frontend interactions. Built for Talent Protocol Builder Rewards.

## Overview
BaseForgeUtils provides standalone Solidity contracts (no imports, no flattening needed) for tasks like event logging, value storage, polling, and feedback. Each contract is verified on Basescan and ready for interaction via a WalletConnect-enabled frontend.

## Contracts
| Contract Name | contract | Category | basescan link |
|---------------|---------|----------|-------------|
| EventEmitter | `<ADDRESS>` | Event Logging | Emits and stores custom events. |
| ValueSetter | `<ADDRESS>` | Data Storage | Sets and retrieves a single value. |
| TimestampChecker | `<ADDRESS>` | Time Management | Tracks and validates timestamps. |
| BalanceTracker | `<ADDRESS>` | Tracking | Records user balances. |
| MessageEncoder | `<ADDRESS>` | Encoding | Encodes and decodes messages. |
| RandomSeedGen | `<ADDRESS>` | Random Generation | Generates pseudo-random seeds. |
| TaskScheduler | `<ADDRESS>` | Scheduling | Schedules tasks by timestamp. |
| ScoreLedger | `<ADDRESS>` | Scoring | Records user scores. |
| FeedbackVault | `<ADDRESS>` | Feedback | Stores user feedback. |
| WishRegistry | `<ADDRESS>` | Registry | Registers user wishes. |
| QuizEngine | `<ADDRESS>` | Quiz | Tracks quiz answers. |
| DonationVault | `<ADDRESS>` | Donation | Collects ETH donations. |
| BadgeIssuer | `<ADDRESS>` | Badges | Issues user badges. |
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
- **WalletConnect**: Use Project ID `ab89fbce996fcfa27b2c5b16fb73632f` (from BaseTools).
- **Deploy Frontend**: Host `index.html` (adapted from BaseTools) on GitHub Pages (`https://ordiha.github.io/BaseForgeUtils`).
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
