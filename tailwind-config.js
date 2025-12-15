// This configuration MUST be loaded AFTER the Tailwind CDN script.

tailwind.config = {
    darkMode: "class",
    theme: {
        extend: {
            colors: {
                "primary": "#DCA06D", // Gold/Orange CTA
                "primary-hover": "#C88E5D",
                "secondary": "#4F1C51", // Header/Accent Purple
                "highlight": "#A55B4B", // Detail Reddish
                "background-light": "#F9F5FF",
                "background-dark": "#210F37", // Deep Purple Background
                "surface-dark": "#361A52", // Slightly lighter purple for cards
                "text-main": "#FFFFFF",
                "text-muted": "#D6C0E0",
            },
            fontFamily: {
                "display": ["Poppins", "sans-serif"],
                "sans": ["Poppins", "sans-serif"],
            },
            borderRadius: {
                "DEFAULT": "1rem",
                "lg": "2rem",
                "xl": "3rem",
                "full": "9999px"
            },
        },
    },
};