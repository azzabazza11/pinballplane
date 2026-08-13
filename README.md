# Pinball Plane

2D pinball playground for the phone — open in Chrome, then **Install** / Add to Home Screen. Tilt, edit, tweak physics. No account.

## Live

- **Open / install on mobile:** https://azzabazza11.github.io/pinballplane/
- **Apps hub:** https://azzabazza11.github.io/
- Deep-link install nudge: https://azzabazza11.github.io/pinballplane/?install=1

## Install on Android

1. Open the live link in Chrome
2. Tap **Install** (or Chrome menu → Install app / Add to Home screen)
3. Launch from your home screen like any app — works offline after first load

## Local

```bash
python3 -m http.server 8080
```

Open http://localhost:8080/

## Now

- Custom 2D physics: gravity, walls, slingshots, round bumpers, flippers, plunger
- Launch lane opens at the top into the playfield (exit guide)
- Flippers: `Z` / `←` and `/` / `→` (or tap left/right half of the table)
- Plunge: hold `Space` (or hold the launch lane), release to fire
- **Enable tilt** — device orientation adds a *small* gravity nudge (phone / tablet)
- Tiny WebAudio hits (mute in the bar)
- **Edit mode** — drag wall endpoints / bumpers / flipper pivots; add wall, sling, bumper; delete; save to localStorage; reset default (`E` or Edit button)
- **Physics panel** — table angle, gravity, bounce, friction, drag, ball size, bumper/sling/flipper/plunger power, tilt gain, max speed (saved)
- **Themes** — `assets/themes/default` (AI playfield + sprites) and `classic` (wire look); **Theme** button cycles; **Guide PNG** in Edit exports collision wireframe for AI backdrops
- **PWA** — service worker, install button, portrait standalone display

## Art pipeline

1. In Edit, tap **Guide PNG** to download the collision overlay
2. Paint / generate a playfield at 360×640 (or 720×1280) with no ball/flippers, using the guide as a lock layer
3. Drop files into `assets/themes/<name>/` and add a `theme.json` (see `default`)
4. Add the theme id to `THEME_IDS` in `index.html`

## Next (likely)

- Better flipper collision & rubber feel
- More bumper / target / ramp toys
- Drain multiball / rules skeleton
- Export / import table JSON + share link
- Share QR like the other toys
