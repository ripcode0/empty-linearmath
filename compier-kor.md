# Windows 환경에서 Clang과 MSVC 컴파일러 지원 비교

| 기능                         | Clang                             | MSVC                               |
|------------------------------|------------------------------------|-------------------------------------|
| **지원 플랫폼**              | Windows, Linux, macOS             | Windows 전용                       |
| **C++ 표준 지원**            | C++98, C++11, C++14, C++17, C++20 | C++98, C++11, C++14, C++17, C++20  |
| **컴파일러 확장**            | 일부 GCC 확장 지원                | MSVC 전용 확장                    |
| **Windows 헤더 지원**        | 완벽 지원                         | 완벽 지원                          |
| **링커**                     | LLVM lld, MSVC Linker 지원        | MSVC Linker                        |
| **ABI 호환성**               | GCC/Clang 호환 ABI                | MS ABI                             |
| **디버깅 정보**              | PDB, DWARF                        | PDB (Program Database)             |
| **최적화 수준**              | -O0, -O1, -O2, -O3, -Ofast        | /O1, /O2, /Ox                      |
| **프로파일링**               | 지원                              | 지원                               |
| **코드 분석 도구**           | Clang Static Analyzer             | Code Analysis                      |
| **병렬 빌드 지원**           | `clang-cl` (`/MP`)                | `/MP` 옵션                         |
| **C++ 표준 라이브러리**      | libc++ 또는 MS STL                | MS STL                             |
| **프리프로세서 명령**        | `__clang__`, `__GNUC__` 매크로    | `_MSC_VER` 매크로                  |
| **디버거와의 통합**          | LLDB, Visual Studio Debugger 지원 | Visual Studio Debugger             |
| **컴파일러 명령어**          | `clang++`, `clang-cl`             | `cl.exe`                           |
| **헤더만 라이브러리 (HPP)**  | 완벽 지원                         | 완벽 지원                          |
| **빌드 도구**                | Ninja, CMake, Visual Studio       | MSBuild, CMake, Visual Studio      |

## 참고 사항
- **Clang**은 `clang-cl`을 사용하여 MSVC 스타일의 명령어와 옵션을 지원합니다.
- **MSVC**는 Windows에서 가장 널리 사용되는 기본 컴파일러이며, Visual Studio IDE와 완벽하게 통합됩니다.
- 두 컴파일러 모두 Windows 환경에서 강력한 C++ 표준 지원과 디버깅 도구를 제공합니다.
