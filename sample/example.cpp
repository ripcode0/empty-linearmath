#include "linearmath/linearmath.h"
#include "DirectXMath.h"
#include "printable.h"
using namespace DirectX;

#include "glm/glm.hpp"



int main(int args, char* argv[])
{
    vec2f pos{};

    XMMATRIX dx_rot = XMMatrixIdentity();

    float yaw = XMConvertToRadians(30.f);
    float yaw_t = 30.f * RADIANS;

    dx_rot = DirectX::XMMatrixRotationRollPitchYaw(45.f * RADIANS, 30.f * RADIANS, 60.f * RADIANS);
    std::cout << dx_rot << std::endl;
    
    mat4x4 rot = mat4x4::yaw_pitch_roll(30, 45, 60);
    //rot = mat4x4::transposed(rot);
    std::cout << rot << std::endl;

    system("pause");

    return 0;
}