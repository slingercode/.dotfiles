// [SECTION 0400]: SAFE BROWSING (SB)
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);
user_pref("browser.safebrowsing.downloads.enabled", false);

// [SECTION 0800]: LOCATION BAR / SEARCH BAR / SUGGESTIONS / HISTORY / FORMS
user_pref("keyword.enabled", true);
user_pref("browser.urlbar.suggest.engines", false);

// [SECTION 1000]: DISK AVOIDANCE
user_pref("browser.shell.shortcutFavicons", true);

// [SECTION 4500]: RFP (RESIST FINGERPRINTING)
user_pref("privacy.resistFingerprinting", false);

// [SECTION 5000]: OPTIONAL OPSEC
user_pref("signon.rememberSignons", false);
user_pref("browser.urlbar.suggest.history", false);
user_pref("browser.urlbar.suggest.bookmark", false);
user_pref("browser.urlbar.suggest.openpage", false);
user_pref("browser.urlbar.suggest.topsites", false);

// [SECTION 9000]: PERSONAL
user_pref("ui.systemUsesDarkTheme", 1);
user_pref("extensions.pocket.enabled", false);
