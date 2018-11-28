#  

       npm run bundle-ios  ios打包脚本


    1 在工程文件下ios目录创建budle文件夹，用来存放index.ios.bundle
    2 在package.json中，添加打包脚本
    "bundle-ios":"node node_modules/react-native/local-cli/cli.js bundle --entry-file index.ios.js --platform ios --dev false --bundle-output ./ios/bundle/index.ios.jsbundle --assets-dest ./ios/bundle"

    3 工程目录下运行命令 npm run bundle-ios
    4 打开xcode工程，添加ios工程中的bundle目录，选择bundle文件,在option中选择Create folder references
    5 修改加载包
    NSURL *jsCodeLocation;
    #ifdef DEBUG
    //开发包
    jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index.ios" fallbackResource:nil];
    #else
    //离线包
    jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"bundle/index.ios" withExtension:@"jsbundle"];
    #endif
    6 工程目录下运行npm start,开启服务器
    7 运行ios主工程
