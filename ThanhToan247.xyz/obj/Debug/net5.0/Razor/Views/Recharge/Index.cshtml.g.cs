#pragma checksum "C:\Users\hungt\OneDrive\Desktop\Summer2022\PRN211\ProjectPRN211\ThanhToan247.xyz\ThanhToan247.xyz\Views\Recharge\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "e7c06f8c61740f2cb04191f0c07187da03073603"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Recharge_Index), @"mvc.1.0.view", @"/Views/Recharge/Index.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"e7c06f8c61740f2cb04191f0c07187da03073603", @"/Views/Recharge/Index.cshtml")]
    public class Views_Recharge_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 4 "C:\Users\hungt\OneDrive\Desktop\Summer2022\PRN211\ProjectPRN211\ThanhToan247.xyz\ThanhToan247.xyz\Views\Recharge\Index.cshtml"
  
    Layout = "~/Views/Shared/_Layout.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"<link rel=""stylesheet"" href=""https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"">
<script src=""https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js""></script>
<script src=""https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js""></script>
<link rel=""stylesheet"" href=""https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"">
<style>
    .container:before {
        content: none;
    }
</style>
<div class=""container py-5"">

    <div class=""row"">
        <div class=""col-lg-12 mx-auto"">
            <div class=""bg-white rounded-lg p-5"">
                <!-- Credit card form tabs -->
                <ul role=""tablist"" class=""nav bg-light nav-pills rounded-pill nav-fill mb-3"">

                    <li class=""nav-item"">
                        <a data-toggle=""pill"" href=""#nav-tab-transaction"" class=""nav-link active rounded-pill"">
                            <i class=""fa fa-university""></i> LỊCH SỦ NẠP TIỀN
                        </");
            WriteLiteral(@"a>
                    </li>

                    <li class=""nav-item"">
                        <a data-toggle=""pill"" href=""#nav-tab-bank"" class=""nav-link rounded-pill"">
                            <i class=""fa fa-university""></i> NẠP QUA NGÂN HÀNG

                        </a>
                    </li>
                </ul>
                <hr>
                <!-- End -->
                <!-- Credit card form content -->
                <div class=""row tab-content"">
                    <!-- credit card info-->
                    <!-- End -->
                    <!-- Paypal info -->
                    <!-- End -->
                    <!-- bank transfer info -->
                    <div id=""nav-tab-bank"" class=""tab-pane fade"">
                        <form action=""addemployee"" method=""post"">
                            <div class=""modal-header"">
                                <h4 class=""modal-title"">NẠP TIỀN QUA NGÂN HÀNG TỰ ĐỘNG</h4>
                            </div>
             ");
            WriteLiteral("               <div class=\"modal-body\">\r\n                                <table");
            BeginWriteAttribute("class", " class=\"", 2304, "\"", 2312, 0);
            EndWriteAttribute();
            WriteLiteral(@">
                                    <tbody>
                                        <tr>
                                            <td>Ngân hàng:</td>
                                            <td class=""font-weight-bold text-primary"">Vietcombank</td>
                                        </tr>
                                        <tr>
                                            <td>Số Tài khoản:</td>
                                            <td class=""font-weight-bold text-primary"">0291000350547</td>
                                        </tr>
                                        <tr>
                                            <td>Chủ Tài Khoản:&nbsp;&nbsp;&nbsp;</td>
                                            <td class=""font-weight-bold"">Nguyễn Trọng Hùng</td>
                                        </tr>
                                        <tr>
                                            <td>Nội dung:</td>
                                            <td class=""font-");
            WriteLiteral(@"weight-bold text-danger"">TT24737</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class=""modal-footer"">
                            </div>
                        </form>
                    </div>
                    <div id=""nav-tab-transaction"" class=""tab-pane fade show active"">
                        <table class=""table table-striped table-hover"">
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Mã giao dịch</th>
                                    <th>Số tiền nhận được</th>
                                    <th>Thời gian</th>
                                </tr>
                            </thead>
                            <tbody>

                                <tr>
                                    <td>1</t");
            WriteLiteral(@"d>
                                    <td>813253.15022</td>
                                    <td>+ 43,546đ</td>
                                    <td>2022-02-13 00:00:00</td>
                                </tr>

                                <tr>
                                    <td>2</td>
                                    <td>MBVCB.175106</td>
                                    <td>+ 50,000đ</td>
                                    <td>2020-01-01 23:15:04</td>
                                </tr>

                                <tr>
                                    <td>3</td>
                                    <td>619965.14022</td>
                                    <td>+ 555đ</td>
                                    <td>2020-01-01 00:00:00</td>
                                </tr>

                                <tr>
                                    <td>4</td>
                                    <td>612945.14022</td>
                                    <td>");
            WriteLiteral(@"+ 25,000đ</td>
                                    <td>2020-01-01 00:00:00</td>
                                </tr>

                                <tr>
                                    <td>5</td>
                                    <td>604498.14022</td>
                                    <td>+ 51,000đ</td>
                                    <td>2020-01-01 00:00:00</td>
                                </tr>

                                <tr>
                                    <td>6</td>
                                    <td>739274.15022</td>
                                    <td>+ 10,000đ</td>
                                    <td>2020-01-01 00:00:00</td>
                                </tr>

                                <tr>
                                    <td>7</td>
                                    <td>487258.15022</td>
                                    <td>+ 10,000đ</td>
                                    <td>2020-01-01 00:00:00</td>
                  ");
            WriteLiteral(@"              </tr>




                            </tbody>
                        </table>
                        <ul class=""pagination"" style=""float: right"">
                            <li class=""page-item""><a class=""page-link"" href=""?page=1"">Previous</a></li>

                            <li class=""page-item active""><a class=""page-link"" href=""?page=1"">1</a></li>

                            <li class=""page-item""><a class=""page-link"" href=""?page=1"">Next</a></li>
                        </ul>


                    </div>
                    <!-- End -->
                </div>
                <!-- End -->
            </div>
        </div>
    </div>
</div>


    </div>");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591