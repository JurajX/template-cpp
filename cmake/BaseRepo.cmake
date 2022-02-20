include(FetchContent)
FetchContent_Declare(
    BaseRepo
    GIT_REPOSITORY      https://github.com/JurajX/BaseRepo.git
    GIT_TAG             origin/master
    GIT_PROGRESS        ON
    UPDATE_DISCONNECTED ON
)
FetchContent_MakeAvailable(BaseRepo)