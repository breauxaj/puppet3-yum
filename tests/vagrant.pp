node default {
  include ::yum

  case $::osfamily {
    'RedHat': {
      yum::config { 'exclude':
        value => 'kernel*'
      }

      yum::gpgkey { 'ius':
        location => '/etc/pki/rpm-gpg/IUS-COMMUNITY-GPG-KEY',
        content  => '-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v1.2.6 (GNU/Linux)

mQGiBEqdoRgRBADVoaxeu3wXCqG+EmrgBoJ8WUjrf5IWl2SvbkASQIyZThZKIizM
+HBGc6rZhLmcoYJsUeef5y915f+B2VHlW2HRDi3qnPUpl1UOMsKxl7/EUSK6Owe0
9x/j044Ji22g5CCzl28EvdJY7yNKFvfhSKKkTmmC+WcQwsc5W5CGurtQEwCg5uMI
p7IzURfXlE0nvaqOgQBdSiMD/1qizNAafb+3GGmkSFP7M3KVLoaIlVziNs6ovDZC
JnlSD+YdcFlhA8vy7Wy0H4fYUIOCSBYbuFgZmYTI3AphGOrogBiURUANxL4oIK3I
N6ClxUofoPw6t3xUecELmK6xnsOfIWXRVMjH7xWEVxHLABXWcUYO/63+DO5JZW3u
XWn9BACzXzWCtHarTKvQRqtEDhd4RxR7of3mZG6dtvaD7Oao2+NoO6ydAQgINnbX
sSKjGgX4x5c3jIMcOc64sdlsaiNi6Xw8NTF8xw5TeurFTx1teDnIEgTRDk33JuSa
bPj5ppDDnBI3G+8a3c+SR2wYBjpYnySY3PM9R+MRzdX1PfkUjbQwSVVTIENvbW11
bml0eSBQcm9qZWN0IDxjb3JlZGV2QGl1c2NvbW11bml0eS5vcmc+iF4EExECAB4F
AkqdoRgCGwMGCwkIBwMCAxUCAwMWAgECHgECF4AACgkQ2iIc35zUlT8UqgCgy1OF
Adsy9z6oDjdW+euAF+CGs9gAn3pb8/btMK1GWtAZEus1mjZG3wm3uQENBEqdoRgQ
BADzG6p1xsbW7eNcCCuL6aIHnN1oqWaoofhegF0nq/GJw3kPRgt7dzMJkJdLVo6J
Jn7cE1vUWpj49C7C+EJQgntvVQIOG1/ExhFPhP+B6E3dAA6rxJoI7Of28wTydOjB
Cxrp+zqSXcsaW8CxqZWnrOGU/6skY1NL+N/4di+O9w6scwADBgQAs91884xBgpLN
9HrqsctFCXaZKHEEashvBCnPjZNHZrRDWnbzrmZxlI8YuvhFy5w11QeNR4I0Slew
prP/WNF7aR/n0aHQ/hBlM0exJovvA2MxWL9Aid1efZfPyjDQtfqrcgSuxUMum8pU
wTv9ONNxsl4tU1rd0aw9KTMR+3hFK8+ISQQYEQIACQUCSp2hGAIbDAAKCRDaIhzf
nNSVP9KyAKDQc01jMA04wjR/XgA+mfzC/kpFPQCaAjXYn804voIOQp5J1cBFWz5q
jBo=
=MxD1
-----END PGP PUBLIC KEY BLOCK-----'
      }

    }
    default: { }
  }
}