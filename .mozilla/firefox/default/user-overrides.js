/*
 * Overrides for Arkenfox
 */

/* enable session restore ***/
user_pref("browser.startup.page", 3); // 0102
user_pref("privacy.clearOnShutdown.history", false); // 2811
user_pref("privacy.clearOnShutdown_v2.historyFormDataAndDownloads", false); // [FF128+] [DEFAULT: true]

/* override recipe: RFP is not for me ***/
user_pref("privacy.resistFingerprinting", false); // 4501
user_pref("privacy.resistFingerprinting.letterboxing", false); // 4504 [pointless if not using RFP]
user_pref("webgl.disabled", false); // 4520 [mostly pointless if not using RFP]

/* don't know why not to use geoclue if I've allowed my position to be sent? */
user_pref("geo.provider.use_geoclue", true); // 0202

/* enable font visibility limiting, since I don't use RFP */
user_pref("layout.css.font-visibility.private", 1); // 1402
user_pref("layout.css.font-visibility.standard", 1); // 1402
user_pref("layout.css.font-visibility.trackingprotection", 1); // 1402

/* why disable this? */
user_pref("accessibility.force_disabled", 0); // 2601

// Don't disable extensions in the application directory
user_pref("extensions.autoDisableScopes", 11); // 2660

// disable built-in password manager
user_pref("signon.rememberSignons", false); // 5003

// i sometimes read that
user_pref("browser.messaging-system.whatsNewPanel.enabled", true); // 9003

// not an override: disable pocket, remove menu entries
user_pref("extensions.pocket.enabled", false);
// stop nagging about DRM
user_pref("media.gmp-widevinecdm.visible", false);
