#pragma once

#include <DirectXMath.h>
#include <ostream>
#include <iomanip>

inline std::ostream& operator<<(std::ostream& o, const DirectX::XMMATRIX& m) {
    DirectX::XMFLOAT4X4 mat;
    DirectX::XMStoreFloat4x4(&mat, m);

#define FM std::setw(12)
	//row major order
	o << "XMFLOAT4X4[" << "\n" <<
		FM << mat.m[0][0] << FM << mat.m[0][1] << FM << mat.m[0][2] << FM << mat.m[0][3] << "\n" <<
		FM << mat.m[1][0] << FM << mat.m[1][1] << FM << mat.m[1][2] << FM << mat.m[1][3] << "\n" <<
		FM << mat.m[2][0] << FM << mat.m[2][1] << FM << mat.m[2][2] << FM << mat.m[2][3] << "\n" <<
		FM << mat.m[3][0] << FM << mat.m[3][1] << FM << mat.m[3][2] << FM << mat.m[3][3] << " ]" << "\n";
#undef FM
	return o;
}