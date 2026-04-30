.class Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$3;
.super Ljava/lang/Object;
.source "BehanceSDKBottomSheetShareDialog.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->access$100(Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 155
    return-object p2
.end method
