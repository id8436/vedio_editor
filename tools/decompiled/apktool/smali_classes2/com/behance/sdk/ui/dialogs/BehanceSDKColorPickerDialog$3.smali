.class Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;
.super Ljava/lang/Object;
.source "BehanceSDKColorPickerDialog.java"

# interfaces
.implements Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 118
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$200(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)V

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lcom/behance/sdk/R$id;->bsdk_picker_wheel:I

    if-ne v2, v3, :cond_2

    .line 120
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$300(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    if-nez v2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v1

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v2, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$400(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;Z)V

    .line 123
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3$1;

    invoke-direct {v3, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3$1;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 130
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$300(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 132
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lcom/behance/sdk/R$id;->bsdk_picker_rgb:I

    if-ne v2, v3, :cond_4

    .line 133
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$300(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 135
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    iget-object v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$300(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/widget/ViewFlipper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v3

    if-le v1, v3, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v2, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$400(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;Z)V

    .line 136
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$500(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3$2;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3$2;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 143
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$300(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 145
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lcom/behance/sdk/R$id;->bsdk_picker_cmyk:I

    if-ne v2, v3, :cond_6

    .line 146
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$300(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 148
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    iget-object v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$300(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/widget/ViewFlipper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v3

    if-le v4, v3, :cond_5

    move v0, v1

    :cond_5
    invoke-static {v2, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$400(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;Z)V

    .line 149
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$600(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3$3;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3$3;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 156
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$300(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_0

    .line 158
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lcom/behance/sdk/R$id;->bsdk_picker_hex:I

    if-ne v2, v3, :cond_7

    .line 159
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$300(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 161
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v2, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$400(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;Z)V

    .line 162
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$300(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 163
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$700(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$100(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 165
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$800(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "%02X"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v6}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$100(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%02X"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v6}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$100(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%02X"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$3;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v6}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$100(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    move v1, v0

    .line 168
    goto/16 :goto_0
.end method
