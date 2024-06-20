class GameImage {
  String url;
  String title;

  GameImage(this.url, this.title);
}

class Game {
  String title;
  GameImage coverImage;
  late List<GameImage> images;
  String description;
  String studio;

  Game(this.title, this.coverImage, this.description, this.studio);
}

List<Game> games = [
  Game(
    "Horizon Zero Dawn",
    GameImage(
        "https://www.wallpaperflare.com/static/734/272/885/horizon-zero-dawn-playstation-4-logo-aloy-horizon-zero-dawn-wallpaper.jpg",
        ""),
    "",
    "Guerrilla Games",
  ),
  Game(
    "Metro Exodus",
    GameImage(
        "https://assets1.ignimgs.com/2018/12/14/metro-exodus---button-1544750418985.jpg",
        ""),
    "",
    "4A Games",
  ),
  Game(
    "Tom Clancy's The Division 2",
    GameImage(
        "https://cdn.division.zone/uploads/2019/03/tc-the-division-2-preload-start-times-sizes-header.jpg",
        ""),
    "",
    "Massive Entertainment",
  ),
  Game(
    "Resident Evil 2",
    GameImage(
        "https://media.playstation.com/is/image/SCEA/resident-evil-2-box-art-01-ps4-us-12dec18?\$native_nt\$",
        ""),
    "",
    "Capcom",
  ),
];

List<Game> games2 = [
  Game(
    "Grand Theft Auto V",
    GameImage(
        "https://gpstatic.com/acache/26/25/1/uk/packshot-7136bdab871d6b2c8f07ccc9ad33b4d0.jpg",
        ""),
    "",
    "Rockstar Games",
  ),
  Game(
    "The Last of Us Part II",
    GameImage(
        "https://m.media-amazon.com/images/I/616+j9jEM4L._AC_UF894,1000_QL80_.jpg",
        ""),
    "",
    "Naughty Dog",
  ),
  Game(
    "Sekiro: Shadows Die Twice",
    GameImage(
        "https://cdn.mobygames.com/covers/7779490-sekiro-shadows-die-twice-xbox-one-front-cover.jpg",
        ""),
    "",
    "From Software",
  ),
  Game(
    "Just Cause 4",
    GameImage(
        "https://cdn.mobygames.com/covers/7351008-just-cause-4-xbox-one-front-cover.jpg",
        ""),
    "",
    "Avalanche Studios",
  ),
];

List<Game> featuredGames = [
  Game(
    "Total War: Three Kingdoms",
    GameImage(
        "https://content.totalwar.com/total-war/com.totalwar.www2019/uploads/2019/03/08145252/2.jpg",
        ""),
    "",
    "Feral Interactive",
  ),
  Game(
    "Call of Duty: Modern Warfare",
    GameImage(
        "https://images.hdqwalls.com/download/call-of-duty-modern-warfare-2019-4k-cb-1920x1080.jpg",
        ""),
    "",
    "Infinity Ward",
  ),
  Game(
    "Dragon Ball Z: Kakarot",
    GameImage(
        "https://i.pinimg.com/564x/03/77/39/0377395b7989c414483e580896048cf1.jpg",
        ""),
    "",
    "CyberConnect2",
  ),
  Game(
    "Mortal Kombat 11",
    GameImage(
        "https://static.trueachievements.com/customimages/093902.jpg", ""),
    "",
    "NetherRealm Studios",
  )
];

List<Game> banners = [
  Game(
    "Total War: Three Kingdoms",
    GameImage(
        "https://cdn.cloudflare.steamstatic.com/steam/apps/779340/header.jpg?t=1699976365",
        ""),
    "",
    "Feral Interactive",
  ),
  Game(
    "Call of Duty: Modern Warfare",
    GameImage(
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/4d87b0f4-ae26-4b18-835c-af3a7ce1349f/ddgk1fm-2704eb00-a1ab-448c-b786-2b7c91256cd9.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzRkODdiMGY0LWFlMjYtNGIxOC04MzVjLWFmM2E3Y2UxMzQ5ZlwvZGRnazFmbS0yNzA0ZWIwMC1hMWFiLTQ0OGMtYjc4Ni0yYjdjOTEyNTZjZDkucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LS2oHh2zQgPs0EJabH_euz4rG8OPX0CY-yvxnQbeWEk",
        ""),
    "",
    "Infinity Ward",
  ),
  Game(
    "Dragon Ball Z: Kakarot",
    GameImage(
        "https://www.gamerdeal.com/wp-content/uploads/2019/10/577a05ea-e76c-468f-a977-a8273750fab6.jpg",
        ""),
    "",
    "CyberConnect2",
  ),
  Game(
    "Mortal Kombat 11",
    GameImage(
        "https://static.trueachievements.com/customimages/093902.jpg", ""),
    "",
    "NetherRealm Studios",
  )
];
