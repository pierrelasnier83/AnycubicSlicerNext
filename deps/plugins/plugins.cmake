AnycubicSlicer_add_cmake_project(
    OpenPlugins
    GIT_REPOSITORY "https://github.com/ANYCUBIC-3D/open-plugins.git"
    # Branche feat/support_new_compiler (2026-03-17) : wxWidgets 3.1 + corrections pour MSVC recent.
    # develop exige wxWidgets 3.3 depuis mai 2026, incompatible avec feat/plugin.
    GIT_TAG "f8723df0dba0836349723d99c6953211556ea040"
    DEPENDS ${WXWIDGETS_PKG} ${OPENSSL_PKG} dep_Boost ${CURL_PKG}
    CMAKE_ARGS
        -DENABLE_I18N=OFF
        # Pas d'auto-link Boost (nom vc143 attendu, vc144 produit) : liaison explicite comme l'appli principale
        "-DCMAKE_CXX_FLAGS:STRING=/DWIN32 /D_WINDOWS /EHsc /DBOOST_ALL_NO_LIB"
)
