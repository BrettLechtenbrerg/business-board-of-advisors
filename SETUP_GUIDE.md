# 🏛️ Business Board of Advisors - Complete Setup Guide

**Welcome!** This guide will walk you through setting up your own AI-powered Business Board of Advisors. No coding experience required!

**Time needed:** About 10-15 minutes

---

## 📋 What You'll Need

Before starting, make sure you have:

- [ ] A Mac or Windows computer
- [ ] An internet connection
- [ ] A credit card (for Anthropic API - you'll get free credits to start!)

---

## Step 1: Get Your Anthropic API Key (5 minutes)

The AI advisors are powered by Claude (made by Anthropic). You need your own API key so you're not using someone else's account.

### 1.1 Create an Anthropic Account

1. Go to **[console.anthropic.com](https://console.anthropic.com)**
2. Click **"Sign Up"** (or "Log In" if you have an account)
3. Enter your email and create a password
4. Verify your email if prompted

### 1.2 Add Payment Method

1. Once logged in, click on **"Settings"** (gear icon) or **"Billing"**
2. Click **"Add Payment Method"**
3. Enter your credit card information
4. **Don't worry!** New accounts get **$5 in free credits** - that's enough for hundreds of questions!

### 1.3 Create Your API Key

1. In the Anthropic Console, click **"API Keys"** in the left sidebar
2. Click **"Create Key"**
3. Give it a name like "Business Board"
4. Click **"Create"**
5. **IMPORTANT:** Copy the key that appears! It starts with `sk-ant-...`
6. Save this key somewhere safe (like a note on your phone) - you'll need it in Step 3!

> ⚠️ **Keep your API key private!** Don't share it with anyone. It's like a password.

---

## Step 2: Download the Business Board (2 minutes)

### Option A: Download as ZIP (Easiest - Recommended!)

1. Go to **[github.com/BrettLechtenbrerg/business-board-of-advisors](https://github.com/BrettLechtenbrerg/business-board-of-advisors)**
2. Click the green **"Code"** button
3. Click **"Download ZIP"**
4. Find the downloaded file (usually in your Downloads folder)
5. **Double-click** the ZIP file to unzip it
6. You'll see a folder called `business-board-of-advisors-main`
7. **Drag this folder** to your Desktop (or wherever you want to keep it)

### Option B: Clone with Git (For tech-savvy users)

If you have Git installed, open Terminal and run:
```bash
cd ~/Desktop
git clone https://github.com/BrettLechtenbrerg/business-board-of-advisors.git
```

---

## Step 3: Run the Setup (3 minutes)

### For Mac Users:

1. Open **Finder** and navigate to the `business-board-of-advisors` folder
2. **Right-click** on `setup.sh`
3. Click **"Open With"** → **"Terminal"**
   - If you don't see Terminal, click "Other..." and search for Terminal
4. If a security warning appears, click **"Open"**
5. Follow the prompts:
   - Enter your **first name** when asked
   - **Paste your API key** when asked (the one starting with `sk-ant-...`)
6. Wait for setup to complete!

**Alternative method for Mac:**
1. Open **Terminal** (search for it in Spotlight with Cmd+Space)
2. Type: `cd ~/Desktop/business-board-of-advisors-main` (adjust path if needed)
3. Type: `./setup.sh`
4. Follow the prompts

### For Windows Users:

1. Make sure you have **Python 3** installed
   - Download from [python.org/downloads](https://python.org/downloads) if needed
   - During install, CHECK the box that says **"Add Python to PATH"**
2. Open **Command Prompt** (search for "cmd" in Start menu)
3. Navigate to the folder:
   ```
   cd Desktop\business-board-of-advisors-main
   ```
4. Install requirements:
   ```
   pip install anthropic python-dotenv
   ```
5. Create a file called `.env` in the folder with this content:
   ```
   ANTHROPIC_API_KEY=sk-ant-your-key-here
   ```
6. Run the program:
   ```
   python main.py
   ```

---

## Step 4: Launch Your Business Board! 🎉

### For Mac Users:

After setup completes, you'll have a new app on your Desktop called:
**"[YourName]'s Advisory Board"**

Just **double-click** it to launch!

### For Windows Users:

Navigate to the folder and run:
```
python main.py
```

---

## Step 5: Using Your Business Board

When you launch the app, you'll see a menu:

```
🏛️  BUSINESS BOARD OF ADVISORS  🏛️
Get advice from the world's top business minds

What would you like to do?
  1. Consult a single advisor
  2. Call a board meeting (all advisors)
  3. Quick board meeting (select advisors)
  4. List available advisors
  5. Exit
```

### Option 1: Consult a Single Advisor
- Choose one advisor to answer your question
- Great for specific topics (e.g., ask Alex Hormozi about pricing)

### Option 2: Call a Board Meeting
- ALL 6 advisors give their perspective on your question
- Best for big decisions where you want multiple viewpoints
- You can also **synthesize** the responses into one action plan!

### Option 3: Quick Board Meeting
- Select 2-4 specific advisors to weigh in
- Good for comparing specific viewpoints

### Your 6 Advisors:

| Key | Advisor | Best For |
|-----|---------|----------|
| `alex_hormozi` | Alex Hormozi | Pricing, offers, business growth |
| `mark_cuban` | Mark Cuban | Entrepreneurship, deal-making, execution |
| `gary_vee` | Gary Vaynerchuk | Marketing, personal brand, social media |
| `walt_disney` | Walt Disney | Vision, creativity, storytelling |
| `charlie_munger` | Charlie Munger | Decision-making, mental models |
| `socrates` | Socrates | First principles, deeper questioning |

---

## Step 6: Customizing Your Advisors (Optional)

Want to change how an advisor responds? Or add new advisors? Here's how!

### 6.1 Understanding Persona Files

Each advisor has a file in the `personas/` folder:
```
personas/
  ├── alex_hormozi.py
  ├── mark_cuban.py
  ├── gary_vaynerchuk.py
  ├── walt_disney.py
  ├── charlie_munger.py
  └── socrates.py
```

### 6.2 Editing an Existing Advisor

1. Open the `personas/` folder
2. Right-click on any `.py` file (e.g., `alex_hormozi.py`)
3. Open with **TextEdit** (Mac) or **Notepad** (Windows)
4. Find the section that starts with `"""You are Alex Hormozi...`
5. Edit the text to change:
   - Their background
   - Communication style
   - Key philosophies
   - How they give advice
6. Save the file

**Example:** Want Alex Hormozi to focus more on your specific industry?
Add a line like:
```
- When advising, relate examples to the fitness industry specifically
```

### 6.3 Adding a New Advisor

Want to add someone like **Elon Musk** or **Oprah Winfrey**? Here's how:

1. **Create a new file** in the `personas/` folder called `elon_musk.py`

2. **Add this template:**
```python
"""
Elon Musk - First Principles Innovator
"""

ELON_MUSK_PROMPT = """You are Elon Musk, CEO of Tesla and SpaceX.

## YOUR BACKGROUND
- [Add background here]

## YOUR COMMUNICATION STYLE
- [Add style notes here]

## YOUR BUSINESS PHILOSOPHY
- [Add philosophy here]

## WHEN GIVING ADVICE
- [Add advice approach here]

Respond as Elon Musk would.
"""
```

3. **Edit `personas/__init__.py`** to add your new advisor:

Add the import at the top:
```python
from .elon_musk import ELON_MUSK_PROMPT
```

Add to the ADVISORS dictionary:
```python
    "elon_musk": {
        "name": "Elon Musk",
        "title": "Innovation & First Principles",
        "prompt": ELON_MUSK_PROMPT,
        "emoji": "🚀"
    },
```

4. **Save both files** and restart the app!

### 6.4 Removing an Advisor

If you want fewer advisors:

1. Open `personas/__init__.py`
2. Delete or comment out (add `#` before) the advisor's entry in the `ADVISORS = {` section
3. Save and restart

---

## 💡 Tips for Best Results

### Ask Specific Questions
- ❌ "How do I grow my business?"
- ✅ "I run a local gym with 200 members. How can I increase revenue without raising prices?"

### Provide Context
When asked for context, share:
- Your business type and size
- Current challenges
- Resources available
- Specific goals and timeline

### Use Board Meetings for Big Decisions
Getting all 6 perspectives helps you see different angles on important decisions.

### Try the Synthesis Feature
After a board meeting, say "yes" to synthesize - it combines all advice into an action plan!

---

## 🔧 Troubleshooting

### "Command not found" or "Permission denied"
- Make sure you're in the right folder
- On Mac, try: `chmod +x setup.sh` then `./setup.sh`

### "API key not found"
- Make sure your `.env` file exists in the main folder
- Check that your API key is correct (starts with `sk-ant-`)

### "Module not found"
- Run: `pip3 install anthropic python-dotenv`

### App doesn't open on Mac
- Right-click the app → "Open" → "Open" (to bypass security)

### Need more help?
- Check if Python is installed: `python3 --version`
- Make sure you're connected to the internet

---

## 📊 API Cost Estimates

| Action | Approximate Cost |
|--------|-----------------|
| One question to one advisor | ~$0.01-0.03 |
| Full board meeting (6 advisors) | ~$0.08-0.20 |
| Board meeting + synthesis | ~$0.12-0.30 |

With $5 in free credits, you can have dozens of board meetings!

---

**Enjoy your Business Board of Advisors!** 🎉

Questions? Issues? The code is open source at:
[github.com/BrettLechtenbrerg/business-board-of-advisors](https://github.com/BrettLechtenbrerg/business-board-of-advisors)
