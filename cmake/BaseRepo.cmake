include(FetchContent)
FetchContent_Declare(
    BaseRepo
    GIT_REPOSITORY https://github.com/JurajX/BaseRepo.git
    GIT_TAG        master
)
FetchContent_MakeAvailable(BaseRepo)