# 🏛️ AI Board of Advisors

Get personalized business advice from AI versions of the world's top business minds.

![Board of Advisors](icon.png)

## 🌟 Your Advisors

| Advisor | Expertise |
|---------|-----------|
| 💪 **Alex Hormozi** | Business Growth, Offers & Pricing |
| 🦈 **Mark Cuban** | Entrepreneurship & Deal Making |
| 📱 **Gary Vaynerchuk** | Marketing & Personal Brand |
| ✨ **Walt Disney** | Vision & Creative Storytelling |
| 🧠 **Charlie Munger** | Mental Models & Decision Making |
| 🏛️ **Socrates** | First Principles Thinking |

## 🚀 Quick Start (3 Steps!)

### 1. Get an API Key (Free to start!)
Go to [console.anthropic.com](https://console.anthropic.com) and create an API key.

### 2. Clone & Setup
```bash
git clone https://github.com/YOUR_USERNAME/ai-board-of-advisors.git
cd ai-board-of-advisors
./setup.sh
```

### 3. Launch!
Double-click the app that appears on your Desktop!

## 💡 Features

- **Single Advisor Mode** - Get focused advice from one expert
- **Board Meeting Mode** - All advisors weigh in on your question
- **Synthesis** - AI combines all perspectives into actionable recommendations
- **Custom Desktop App** - One-click launch with your name on it

## 📖 Usage Examples

```bash
# Interactive mode (recommended)
python3 main.py

# Quick question to one advisor
python3 main.py --advisor alex_hormozi -q "How should I price my service?"

# Full board meeting with synthesis
python3 main.py --board-meeting -q "Should I quit my job to start a business?" --synthesize

# Select specific advisors
python3 main.py --advisors alex_hormozi,mark_cuban,charlie_munger -q "Is this deal worth it?"
```

## 🔧 Customization

Want different advisors? Edit the files in the `personas/` folder!

Each persona file contains:
- Background & expertise
- Communication style
- Key frameworks & philosophies
- How they give advice

## 📋 Requirements

- Python 3.8+
- Anthropic API key ([get one here](https://console.anthropic.com))

## 🙏 Credits

Built with [Claude](https://anthropic.com) by Anthropic.

Inspired by the real wisdom of Alex Hormozi, Mark Cuban, Gary Vaynerchuk, Walt Disney, Charlie Munger, and Socrates.

## 📄 License

MIT License - Use freely, share widely!
