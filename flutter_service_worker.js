'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "c2da1e25f964b66277a29f0024f9bc89",
"/": "c2da1e25f964b66277a29f0024f9bc89",
"main.dart.js": "07464ddf2958780751b70b78e9408740",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "58803dac52b45633ee321b994653b1b3",
"assets/AssetManifest.json": "3d0de8a9ed9e3b31202cb1185943a907",
"assets/NOTICES": "58bf6de13fd03d77d67edce8aa18e7af",
"assets/FontManifest.json": "7aaf3996738086bbd796613e14ef9e45",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/flutter_icons/fonts/Octicons.ttf": "73b8cff012825060b308d2162f31dbb2",
"assets/packages/flutter_icons/fonts/Feather.ttf": "6beba7e6834963f7f171d3bdd075c915",
"assets/packages/flutter_icons/fonts/Entypo.ttf": "744ce60078c17d86006dd0edabcd59a7",
"assets/packages/flutter_icons/fonts/FontAwesome5_Brands.ttf": "c39278f7abfc798a241551194f55e29f",
"assets/packages/flutter_icons/fonts/MaterialCommunityIcons.ttf": "3c851d60ad5ef3f2fe43ebd263490d78",
"assets/packages/flutter_icons/fonts/AntDesign.ttf": "3a2ba31570920eeb9b1d217cabe58315",
"assets/packages/flutter_icons/fonts/Foundation.ttf": "e20945d7c929279ef7a6f1db184a4470",
"assets/packages/flutter_icons/fonts/weathericons.ttf": "4618f0de2a818e7ad3fe880e0b74d04a",
"assets/packages/flutter_icons/fonts/Ionicons.ttf": "b2e0fc821c6886fb3940f85a3320003e",
"assets/packages/flutter_icons/fonts/FontAwesome5_Solid.ttf": "b70cea0339374107969eb53e5b1f603f",
"assets/packages/flutter_icons/fonts/FontAwesome5_Regular.ttf": "f6c6f6c8cb7784254ad00056f6fbd74e",
"assets/packages/flutter_icons/fonts/FontAwesome.ttf": "b06871f281fee6b241d60582ae9369b9",
"assets/packages/flutter_icons/fonts/Zocial.ttf": "5cdf883b18a5651a29a4d1ef276d2457",
"assets/packages/flutter_icons/fonts/EvilIcons.ttf": "140c53a7643ea949007aa9a282153849",
"assets/packages/flutter_icons/fonts/SimpleLineIcons.ttf": "d2285965fe34b05465047401b8595dd0",
"assets/packages/flutter_icons/fonts/MaterialIcons.ttf": "a37b0c01c0baf1888ca812cc0508f6e2",
"assets/fonts/MaterialIcons-Regular.otf": "a68d2a28c526b3b070aefca4bac93d25",
"assets/assets/Paint5.JPG": "32d1c31603a84ba7fab0bdb126a05f68",
"assets/assets/Kimovie3.PNG": "c9cf344b926993d70461963aaa1e52e1",
"assets/assets/Kimovie2.PNG": "23f8f8b11607ba387841cdcca5bc058b",
"assets/assets/Pathfinding.png": "9a5ec7ff3ebdcd1485a7b61e47b1c4f1",
"assets/assets/Paint4.JPG": "3b6a25dece87bfc6704e04d85891be5d",
"assets/assets/Sudoku.PNG": "66c40e416d48eb45c54f3ea99fe1ed13",
"assets/assets/Paris.JPG": "69401f7733a6f267b706c3779ca203e8",
"assets/assets/Paint6.JPG": "56b36546f8bcc069c1951bf257b5eecc",
"assets/assets/Erri10.png": "f0b6f71715e09d64fa4f2067c64a4e5b",
"assets/assets/Kimovie1.PNG": "099d9bff1804dddd4f9243d5f40859cc",
"assets/assets/Paint7.JPG": "29c06e35b147de2a52a041dfad6241aa",
"assets/assets/MT.JPG": "03aa68a7473e93aeaaed980d430ccbd1",
"assets/assets/LP.JPG": "3287dfac53532e9eefe9386259eacf50",
"assets/assets/Paint3.JPG": "7b821b63a24f4135471df2d9ec7e94c5",
"assets/assets/Paint2.JPG": "ae234931bf80ac1f3b65b9971b275944",
"assets/assets/NY.JPG": "6afd6b0866a7e7d80a0148573c324d0e",
"assets/assets/portrait.png": "78e2c20abbebb924ab98fdd6ed7be694",
"assets/assets/Paint1.JPG": "4995ad07c9ebd90addf832c8cbbcb3ff",
"assets/assets/Frace3.JPG": "981f5bf440fb22a01eea998aef89d283",
"assets/assets/VA1.JPG": "284bf2b9bddb20eb80a1eb9da0cf53ed",
"assets/assets/VA3.JPG": "09b032c3d33820bb768f7a65153ad844",
"assets/assets/Father.JPEG": "e660827f8ab653191c0fc5a47e1cf67f",
"assets/assets/Family.JPG": "4c593f862fe4c8d527593e566ded9f45",
"assets/assets/VA2.JPG": "82048d41c93e054d865ff94f6e156c98",
"assets/assets/Sketch1.JPG": "b3e69a4fa68d03cc1fe54ba69785dfb2",
"assets/assets/VA5.JPG": "83929602018ac8ef140b97986d112120",
"assets/assets/background.jpg": "ad4d657ae4b464a749b1db1c3f0a05f3",
"assets/assets/Sketch2.JPG": "309370176efd776218271c7d704cff5e",
"assets/assets/background.png": "ca253ee5b28da1c6a089523b61cc9fae",
"assets/assets/VA4.JPG": "a9d242e5b0696077b236d16bfc615b5b",
"assets/assets/Fix.JPG": "c08643393d4c71be7fa0815aedf97790",
"assets/assets/Kimovie.PNG": "b5b215b6ff5430c1be210443ca603ebb",
"assets/assets/Ski.JPG": "2113d5a6f5cf5d587f5bbd86c6b7add6",
"assets/assets/Paris2.JPG": "3d485cf117818349eba7ab5c9d05d785",
"assets/assets/Paris3.JPG": "be478be716eda275f218e35ec28f3f8a",
"assets/assets/EriKimcheese.png": "1d3c6a7d39aa4cc5eaede987426403a1",
"assets/assets/portrait2.png": "cdafda6a2562c81aaf750e969a4a0756",
"assets/assets/Jarvis.PNG": "65305ca1f1015bd2f93573c743cfba3b",
"assets/assets/backgroundpic.png": "f565a884000e2040f5f4c3157affb161",
"assets/assets/Clock.JPG": "df5d1859e8c29b486467b09a662b4c72",
"assets/assets/photoshop.jpg": "67def31167e9a5bce8ed992a8c6bd58a",
"assets/assets/France4.JPG": "dcfe4b0577d391b621123f6021c39083",
"assets/assets/France1.JPG": "0072e3de9abd1caa72f220b097892a1d",
"assets/assets/Patin10.JPG": "166a23aba26e1bbeb83cf9d801592308",
"assets/assets/France2.JPG": "a3d33efbd5682b1a8a3022d02525a425",
"assets/assets/Paint9.JPG": "e4ccbc735a83830e84951a58b182db5d",
"assets/assets/Sunset.JPG": "7bc670bdf91368520ee5cbd0b87cfbd4",
"assets/assets/Grandpa.png": "8fe9be3febbc7fd9ff5b032333b07800",
"assets/assets/Rain.JPG": "b8b5415f738ffe1e8b20b6f2c1bb0e6b",
"assets/assets/Errib10.png": "56f62b9d06575c61f23170ed046e32bf",
"assets/assets/Paint8.JPG": "83083dc356d541058b9d37762e16b885",
"assets/assets/France3.JPG": "d6fc6e1a4870fddf5f073ce50f459f88"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      // Provide a 'reload' param to ensure the latest version is downloaded.
      return cache.addAll(CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');

      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }

      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#')) {
    key = '/';
  }
  // If the URL is not the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache. Ensure the resources are not cached
        // by the browser for longer than the service worker expects.
        var modifiedRequest = new Request(event.request, {'cache': 'reload'});
        return response || fetch(modifiedRequest).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    return self.skipWaiting();
  }

  if (event.message === 'downloadOffline') {
    downloadOffline();
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
