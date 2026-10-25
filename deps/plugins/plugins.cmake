AnycubicSlicer_add_cmake_project(
    OpenPlugins
    GIT_REPOSITORY "https://github.com/ANYCUBIC-3D/open-plugins.git"
    # Fige sur le commit du 2026-02-02 (meme date que feat/plugin) : develop exige wxWidgets 3.3 depuis mai 2026
    GIT_TAG "52f0d33a3b2463e2748f3b5b0c48d93f68da56ef"
    DEPENDS ${WXWIDGETS_PKG} ${OPENSSL_PKG} dep_Boost ${CURL_PKG}
    CMAKE_ARGS
        -DENABLE_I18N=OFF
)
