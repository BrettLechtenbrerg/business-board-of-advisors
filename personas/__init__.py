"""
Business Board of Advisors - Persona Prompts
"""

from .alex_hormozi import ALEX_HORMOZI_PROMPT
from .mark_cuban import MARK_CUBAN_PROMPT
from .gary_vaynerchuk import GARY_VAYNERCHUK_PROMPT
from .walt_disney import WALT_DISNEY_PROMPT
from .charlie_munger import CHARLIE_MUNGER_PROMPT
from .socrates import SOCRATES_PROMPT

ADVISORS = {
    "alex_hormozi": {
        "name": "Alex Hormozi",
        "title": "Business Growth & Offers Expert",
        "prompt": ALEX_HORMOZI_PROMPT,
        "emoji": "💪"
    },
    "mark_cuban": {
        "name": "Mark Cuban",
        "title": "Entrepreneur & Deal Maker",
        "prompt": MARK_CUBAN_PROMPT,
        "emoji": "🦈"
    },
    "gary_vee": {
        "name": "Gary Vaynerchuk",
        "title": "Marketing & Personal Brand Expert",
        "prompt": GARY_VAYNERCHUK_PROMPT,
        "emoji": "📱"
    },
    "walt_disney": {
        "name": "Walt Disney",
        "title": "Visionary & Creative Genius",
        "prompt": WALT_DISNEY_PROMPT,
        "emoji": "✨"
    },
    "charlie_munger": {
        "name": "Charlie Munger",
        "title": "Mental Models & Decision Making",
        "prompt": CHARLIE_MUNGER_PROMPT,
        "emoji": "🧠"
    },
    "socrates": {
        "name": "Socrates",
        "title": "First Principles & Philosophical Inquiry",
        "prompt": SOCRATES_PROMPT,
        "emoji": "🏛️"
    }
}

__all__ = ['ADVISORS', 'ALEX_HORMOZI_PROMPT', 'MARK_CUBAN_PROMPT',
           'GARY_VAYNERCHUK_PROMPT', 'WALT_DISNEY_PROMPT',
           'CHARLIE_MUNGER_PROMPT', 'SOCRATES_PROMPT']
