/*
 * Overrides for Arkenfox
 */

/* enable session restore ***/
user_pref("browser.startup.page", 3); // 0102

/* don't know why not to use geoclue if I've allowed my position to be sent? */
user_pref("geo.provider.use_geoclue", true); // 0202

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
