# AlpMrpBackend

## :pushpin:Getting Started
N-Katmanlı mimari yapısı ile hazırlanan bu proje müşteri odaklı, varyant yapısı kullanılarak üretim yapan firmalar için iş emri ve sipariş alan bir projedir. Müşteriler ya da üretim firmasına bağlı bayiiler kendileri için tasarlanmış arayüz üzerinden siparişlerini verip sipariş durumlarını takip edebilirler. Ayrıca proje istenmesi durumunda BOM(bill of metarial) hazılanabilecek şekilde tasarlanmıştır.
## :books:Layers
### Entities Layer
Veritabanı nesneleri için oluşturulmuş **Entities Katmanı**'nda **Abstract** ve **Concrete** olmak üzere iki adet klasör bulunmaktadır.Abstract klasörü soyut nesneleri, Concrete klasörü somut nesneleri tutmak için oluşturulmuştur.  
<br>:file_folder:`DTOs`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [CartDataDetailDto.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/DTOs/CartDataDetailDto.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [CartDto.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/DTOs/CartDTO.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [CartDto2.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/DTOs/CartDto2.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ProductDetailDto.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/DTOs/ProductDetailDto.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [UserForLoginDto.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/DTOs/UserForLoginDto.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [UserForRegisterDto.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/DTOs/UserForRegisterDto.cs)
<br> :file_folder:`Concrete`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [AddToCart.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/Concrete/AddToCart.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [Cart.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/Concrete/Cart.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [Option.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/Concrete/Option.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [Order.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/Concrete/Order.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [Product.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/Concrete/Product.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ProductOption.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/Concrete/ProductOption.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [UserCart.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/Concrete/UserCart.cs)
###  Business Layer
Sunum katmanından gelen bilgileri gerekli koşullara göre işlemek veya denetlemek için oluşturulan **Business Katmanı**'nda **Abstract** , **Concrete** , **BusinessAspects** , **CCS** , **Constants** , **DependencyResolver** ve **ValidationRules**  olmak üzere yedi adet klasör bulunmaktadır.Abstract klasörü soyut nesneleri, Concrete klasörü somut nesneleri tutmak için oluşturulmuştur. Bağımlılık çözümlemek için **Autofac** Validaston için ise **FluentValidation** kullanılmıştır.  
<br>:file_folder:`Abstract`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ICartDetail.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Abstract/CartDetail.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [IAuthService.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Abstract/IAuthService.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ICartService.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Abstract/ICartService.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [IOptionService.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Abstract/IOptionService.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [IProductOptionService.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Abstract/IProductOptionService.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [IProductService.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Abstract/IProductService.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [IUserCartService.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Abstract/IUserCartService.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [IUserService.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Abstract/IUserService.cs)
<br>:file_folder:`BussinesAspects`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `Autofac`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [SecuredOperation.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/BusinessAspects/Autofac/SecuredOperation.cs)
<br>:file_folder:`CCS`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [DatabaseLogger.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/CCS/DatabaseLogger.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [FileLogger.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/CCS/FileLogger.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ILoggerLogger.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/CCS/FileLogger.cs)
<br>:file_folder:`Concrete`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [AuthManager.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Concrete/AuthManager.cs)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [CartDetailManager.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Concrete/CartDetailManager.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [CartManager.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Concrete/CartManager.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [OptionManager.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Concrete/OptionManager.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ProductManager.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Concrete/ProductOptionManager.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ProductOptionManager.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Concrete/ProductOptionManager.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [UserCartManager.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Concrete/UserCartManager.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [UserManager.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Concrete/UserManager.cs)
<br>:file_folder:`Constants`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [Messages.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Constants/Messages.cs)
<br>:file_folder:`DependencyResolvers`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `Autofac`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [AutofacBusinessModule.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/DependencyResolvers/Autofac/AutofacBusinessModule.cs)
<br>:file_folder:`ValidationRules`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `FluentValidation`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [OptionValidator.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/ValidationRules/FluentValidation/OptionValidator.cs)
###  Data Access Layer
Veritabanı CRUD işlemleri gerçekleştirmek için oluşturulan **Data Access Katmanı**'nda **Abstract** ve **Concrete** olmak üzere iki adet klasör bulunmaktadır. Teknoloji olarak Microsoft Entity Framework tercih edilmiştir.
<br>:file_folder:`Abstract`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ICartDal.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/DataAccess/Abstract/ICartDal.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ICartDetail.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/DataAccess/Abstract/ICartDetailDal.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [IOptionDal.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/DataAccess/Abstract/IOptionDal.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [IProductDal.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/DataAccess/Abstract/IProductDal.cs)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [IProductOptionDal.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/DataAccess/Abstract/IProductOptionDal.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [IUserCartDal.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/DataAccess/Abstract/IUserCartDal.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [IUserDal.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/DataAccess/Abstract/IUserDal.cs)
<br>:file_folder:`Concrete`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `EntityFramework`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [AlplerVTContext.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/DataAccess/Concrete/EntityFramework/AlplerVTContext.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [EfCartDal.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/DataAccess/Concrete/EntityFramework/EfCartDal.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [EfCartDetailDal.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/DataAccess/Concrete/EntityFramework/EfCartDetailDal.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [EfOptionDal.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/DataAccess/Concrete/EntityFramework/EfOptionDal.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [EfProductDal.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/DataAccess/Concrete/EntityFramework/EfProductDal.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [EfProductOptionDal.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/DataAccess/Concrete/EntityFramework/EfProductOptionDal.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [EfUserCartDal.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/DataAccess/Concrete/EntityFramework/EfUserCartDal.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [EfUserDal.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/DataAccess/Concrete/EntityFramework/EfUserDal.cs)

###  Core Layer
Tüm projelerde baz alabileceğim **Core Katmanı**'nda **Aspects** ,  **CrossCuttingConcerns** , **DataAccess** , **DependencyResolvers** , **Entities** , **Extentions** ve **Utilities** olmak üzere yedi adet klasör bulunmaktadır. Bu katmanda tüm projelerimde kullanılacak soyut sınıflar, generic yapılar  ve teknolojiler kullanılmıştır.
<br>:file_folder:`Aspects`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `Autofac`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `Caching`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [CacheAspect.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Aspects/Autofac/Caching/CacheAspect.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [CacheRempveAspect.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Aspects/Autofac/Caching/CacheRemoveAspect.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `Autofac`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `Validation`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ValidationAspect.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Aspects/Autofac/Validation/ValidationAspect.cs)
<br>:file_folder:`CrossCuttingConcerns`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `Caching`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `Microsoft`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [MemoryCacheManager.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/CrossCuttingConcerns/Caching/Microsoft/MemoryCacheManager.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ICacheManager.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/CrossCuttingConcerns/Caching/ICacheManager.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `Validation`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ValidationTool.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/CrossCuttingConcerns/Validation/ValidationTool.cs)
<br>:file_folder:`DataAccess`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `EntitiyFramework`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [EfEntityRepositoryBase.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/DataAccess/EntityFramework/EfEntityRepositoryBase.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [IEntityRepository.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/DataAccess/IEntityRepository.cs)
<br>:file_folder:`DependencyResolvers`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `Entities`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [OperationClaims.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Entities/Concrete/OperationClaim.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [User.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Entities/Concrete/User.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [UserOperations.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Entities/Concrete/UserOperationClaim.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [IDto.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Entities/IDto.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [IEntity.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Entities/IEntity.cs)
<br>:file_folder:`Extentions`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ClaimExtentions.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Extensions/ClaimExtensions.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ClaimPrincipalExtentions.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Extensions/ClaimsPrincipalExtensions.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ErrorDetail.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Extensions/ErrorDetails.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ExceptionMiddleware.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Extensions/ExceptionMiddleware.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ExeptionMiddlewareExtentions.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Extensions/ExceptionMiddlewareExtensions.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [SerciveCollectionExtentions.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Extensions/ServiceCollectionExtensions.cs)
<br>:file_folder:`Utilities`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `Business`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [BusinessRule.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Business/BusinessRules.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `Interceptors`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [AspectInterceptorSelector.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Interceptors/AspectInterceptorSelector.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [MethodInterception.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Interceptors/MethodInterception.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [MethodInterceptionBaseAttribute.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Interceptors/MethodInterceptionBaseAttribute.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `Ioc`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ICoreModule.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/IoC/ICoreModule.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ServiceTool.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/IoC/ServiceTool.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `Results`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [DataResult.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Results/DataResult.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ErrorDataResult.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Results/ErrorDataResult.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ErrorResult.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Results/ErrorResult.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [IDataResult.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Results/IDataResult.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [IResult.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Results/IResult.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [Result.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Results/Result.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [SuccesDataResult.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Results/SuccessDataResult.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [SuccesResult.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Results/SuccessResult.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `Security`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `Encryption`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [SecurityKeyHelper.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Security/Encryption/SecurityKeyHelper.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [SigningCredentialsHelper.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Security/Encryption/SigningCredentialsHelper.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `Hashing`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [HashingHelper.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Security/Hashing/HashingHelper.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `JWT`
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [AccesToken.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Security/JWT/AccessToken.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ITokenHelper.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Security/JWT/ITokenHelper.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [JwtHelper.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Security/JWT/JwtHelper.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [TokenOptions.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Core/Utilities/Security/JWT/TokenOptions.cs)


### :red_circle:Prerequisites
```
EntityFrameworkCore 3.1.11
```

## :pencil2:Authors
* **Muhammed AKIN** - [makin4990](https://github.com/makin4990)

<div style="text-align:center">
            <h4>
                <a href="http://www.vaibhavpandey.com/whatsnew/" align="center">
                    <img src="https://raw.githubusercontent.com/vaibhavpandeyvpz/whatsnew/master/logo.png" height="20">WhatsApp
                </a>
            </h4>
        </div>
