## Demo

Run the `bootstrap.sh` command using one of the following: `android`, `ios`, or `all`.

Each will launch the `git sparse-checkout set` command to show only the directories needed for those teams.

1. ```sh
   $ git clone --filter=blob:none --no-checkout git@github.com:stoe/client-sparse-checkout-demo.git
   Cloning into 'client-sparse-checkout-demo'...
   remote: Enumerating objects: 4, done.
   remote: Counting objects: 100% (4/4), done.
   remote: Compressing objects: 100% (3/3), done.
   remote: Total 4 (delta 0), reused 4 (delta 0), pack-reused 0
   Receiving objects: 100% (4/4), done.
   ```
2. ```sh
   $ cd client-sparse-checkout-demo/
   ```
3. ```sh
   git sparse-checkout init --cone
   ```
4. ```sh
   $ git checkout main
   remote: Enumerating objects: 4, done.
   remote: Counting objects: 100% (4/4), done.
   remote: Compressing objects: 100% (4/4), done.
   remote: Total 4 (delta 0), reused 4 (delta 0), pack-reused 0
   Receiving objects: 100% (4/4), 2.84 KiB | 2.84 MiB/s, done.
   Already on 'main'
   Your branch is up to date with 'origin/main'.
   ```

   ```sh
   $ tree
   .
   ├── bootstrap.sh
   └── readme.md

   0 directories, 2 files
   ```

### Android

```sh
$ ./bootstrap.sh android
Running 'git sparse-checkout init --cone'
Running 'git sparse-checkout set common client/android tools/android'
```

```sh
$ tree
.
├── bootstrap.sh
├── client
│   └── android
│       └── android.jpg
├── common
├── readme.md
└── tools
    └── android

5 directories, 3 files
```

### iOS

```sh
$ ./bootstrap.sh ios
Running 'git sparse-checkout init --cone'
Running 'git sparse-checkout set common client/ios tools/ios'
```

```sh
$ tree
.
├── bootstrap.sh
├── client
│   └── iOS
│       └── ios.jpg
├── common
├── readme.md
└── tools
    └── iOS

5 directories, 3 files
```

### All

```sh
$ ./bootstrap.sh all
Running 'git sparse-checkout init --cone'
Running 'git sparse-checkout set common client tools'
```

```sh
$ tree
.
├── bootstrap.sh
├── client
│   ├── android
│   │   └── android.jpg
│   └── iOS
│       └── ios.jpg
├── common
├── readme.md
└── tools
    ├── android
    └── iOS

7 directories, 4 files
```

## Resources

- https://github.blog/2021-11-10-make-your-monorepo-feel-small-with-gits-sparse-index/
- https://github.blog/2021-04-29-scaling-monorepo-maintenance/
- https://github.blog/2021-03-16-improving-large-monorepo-performance-on-github/
- https://github.blog/2020-12-21-get-up-to-speed-with-partial-clone-and-shallow-clone/
- https://github.blog/2020-01-17-bring-your-monorepo-down-to-size-with-sparse-checkout/
- https://github.com/derrickstolee/sparse-checkout-example

Images:

- https://www.peakpx.com/526187/android-smartphone-home-screen-display-in-black-background
- https://pxhere.com/en/photo/1370785
