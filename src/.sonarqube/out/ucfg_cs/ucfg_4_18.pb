
AMix.Cms.Api.Controllers.ApiAccountController.RefreshToken(string)g
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.csx �(	refreshTokenId"8*�
0��
f
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs}> }(l
%0"6Mix.Domain.Core.ViewModels.RepositoryResponse<TResult>�
�
f
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs}B }(j
%1"KMix.Domain.Core.ViewModels.RepositoryResponse<TResult>.RepositoryResponse()*

%0�
�
f
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs}5 }(l
result"__id*

%0�
�
f
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs~( ~(H
%2"__id*H*F6
4Mix.Cms.Lib.ViewModels.Account.RefreshTokenViewModel"

Repository�
�
f
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs~( ~(y
%3"�Mix.Domain.Data.Repository.ViewRepositoryBase<TDbContext, TModel, TView>.GetSingleModelAsync(System.Linq.Expressions.Expression<System.Func<TModel, bool>>, TDbContext, Microsoft.EntityFrameworkCore.Storage.IDbContextTransaction)*

%2*
""*
""*
""�
�
f
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs~ ~(y
getRefreshToken"__id*
""�
�
f
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs ()
%4"DMix.Domain.Core.ViewModels.RepositoryResponse<TResult>.IsSucceed.get*

getRefreshToken*
1
2*�
1�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs� �(3
%5"?Mix.Domain.Core.ViewModels.RepositoryResponse<TResult>.Data.get*

getRefreshToken�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs� �(3

oldToken"__id*

%5�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs� �('
%6"CMix.Cms.Lib.ViewModels.Account.RefreshTokenViewModel.ExpiresUtc.get*


oldToken�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs�* �(9
%7"System.DateTime.UtcNow.get*"
System.DateTime�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs� �(9
%8"<System.DateTime.operator >(System.DateTime, System.DateTime)*"
System.DateTime*

%6*

%7*
3
4*�	
3�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs�% �(1
%9"__id** "
_userManager�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs�C �(Q
%10">Mix.Cms.Lib.ViewModels.Account.RefreshTokenViewModel.Email.get*


oldToken�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs�% �(R
%11"IMicrosoft.AspNetCore.Identity.UserManager<TUser>.FindByEmailAsync(string)*

%9*

%10�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs� �(R
user"__id*
""�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs�& �(J
%12"pMix.Cms.Api.Controllers.ApiAccountController.GenerateAccessTokenAsync(Mix.Identity.Models.ApplicationUser, bool)* *

user*
""�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs� �(J
token"__id*
""�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs� �(%
%13""object.operator !=(object, object)*
"
object*	

token*
""*
5
6*�
5�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs� �(9
%14"�Mix.Domain.Data.ViewModels.ViewModelBase<TDbContext, TModel, TView>.RemoveModelAsync(bool, TDbContext, Microsoft.EntityFrameworkCore.Storage.IDbContextTransaction)*


oldToken*
""*
""*
""*
6*�
6�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs� �(+
%15"DMix.Domain.Core.ViewModels.RepositoryResponse<TResult>.IsSucceed.set*


result*
""�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs� �('
%16"?Mix.Domain.Core.ViewModels.RepositoryResponse<TResult>.Data.set*


result*	

token"v
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs� �("


result*�
4�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs� �(5
%17"�Mix.Domain.Data.ViewModels.ViewModelBase<TDbContext, TModel, TView>.RemoveModelAsync(bool, TDbContext, Microsoft.EntityFrameworkCore.Storage.IDbContextTransaction)*


oldToken*
""*
""*
""�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs� �(!
%18"AMix.Domain.Core.ViewModels.RepositoryResponse<TResult>.Errors.get*


result�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs� �(6
%19")System.Collections.Generic.List<T>.Add(T)*

%18*
"""v
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs� �("


result*�
2�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs� �(
%20"AMix.Domain.Core.ViewModels.RepositoryResponse<TResult>.Errors.get*


result�
�
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs� �(2
%21")System.Collections.Generic.List<T>.Add(T)*

%20*
"""v
h
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs� �(


result*
7"
""*�
8�
�
f
\C:\_workspace\github\mixcore\mix.core\src\Mix.Cms.Api\Controllers\v1\ApiAccountController.cs{D {(P
%22"__entrypoint*

refreshTokenId*
0