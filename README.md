# AlpMrpBackend

## :pushpin:Getting Started
N-Katmanlı mimari yapısı ile hazırlanan bu proje müşteri odaklı, varyant yapısı kullanılarak üretim yapan firmalar için iş emri ve sipariş alan bir projedir. Müşteriler ya da üretim firmasına bağlı bayiiler kendileri için tasarlanmış arayüz üzerinden siparişlerini verip sipariş durumlarını takip edebilirler. Ayrıca proje istenmesi durumunda BOM(bill of metarial) hazılanabilecek şekilde tasarlanmıştır.  [Nortwind Sql Code](https://github.com/microsoft/sql-server-samples/blob/master/samples/databases/northwind-pubs/instnwnd.sql)
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

<br> <br> :file_folder:`Concrete`   
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [AddToCart.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/Concrete/AddToCart.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [Cart.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/Concrete/Cart.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [Option.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/Concrete/Option.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [Order.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/Concrete/Order.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [Product.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/Concrete/Product.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ProductOption.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/Concrete/ProductOption.cs)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [UserCart.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Entities/Concrete/UserCart.cs)

###  Business Layer
Sunum katmanından gelen bilgileri gerekli koşullara göre işlemek veya denetlemek için oluşturulan **Business Katmanı**'nda **Abstract** ve **Concrete** olmak üzere iki adet klasör bulunmaktadır.Abstract klasörü soyut nesneleri, Concrete klasörü somut nesneleri tutmak için oluşturulmuştur.  
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

<br> <br> :file_folder:`Concrete`  
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [AuthManager.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Concrete/AuthManager.cs)  
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [CartDetailManager.cs](https://github.com/makin4990/AlpMrpBackend/blob/master/Business/Concrete/CartDetailManager.cs)
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
Veritabanı CRUD işlemleri gerçekleştirmek için oluşturulan **Data Access Katmanı**'nda **Abstract** ve **Concrete** olmak üzere iki adet klasör bulunmaktadır.Abstract klasörü soyut nesneleri, Concrete klasörü somut nesneleri tutmak için oluşturulmuştur.  
<br>:file_folder:`Abstract`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [ICategoryDal.cs](https://github.com/ergulkizilkaya/FinalProject/blob/master/DataAccess/Abstract/ICategoryDal.cs)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [IProductDal.cs](https://github.com/ergulkizilkaya/FinalProject/blob/master/DataAccess/Abstract/IProductDal.cs)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up:[ICustomerDal.cs](https://github.com/ergulkizilkaya/FinalProject/blob/master/DataAccess/Abstract/ICustomerDal.cs)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [IEntityRepository.cs](https://github.com/ergulkizilkaya/FinalProject/blob/master/DataAccess/Abstract/IEntityRepository.cs)
<br> <br> :file_folder:`Concrete`  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:file_folder: `EntityFramework`    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [EfCategoryDal.cs](https://github.com/ergulkizilkaya/FinalProject/blob/master/DataAccess/Concrete/EntityFramework/EfCategoryDal.cs)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [EfProductDal.cs](https://github.com/ergulkizilkaya/FinalProject/blob/master/DataAccess/Concrete/EntityFramework/EfProductDal.cs)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:page_facing_up: [NorthwindContext.cs](https://github.com/ergulkizilkaya/FinalProject/blob/master/DataAccess/Concrete/EntityFramework/NorthwindContext.cs)  
### :red_circle:Prerequisites
```
EntityFrameworkCore 3.1.11
```

## :pencil2:Authors
* **Muhammed AKIN** - [makin4990](https://github.com/makin4990)
