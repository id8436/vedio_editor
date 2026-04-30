.class Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$5;
.super Ljava/lang/Object;
.source "BehanceSDKColorPickerDialogSimple.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field b:Z

.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)V
    .locals 1

    .prologue
    .line 132
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$5;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$5;->b:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/16 v1, 0x23

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 148
    invoke-interface {p1, v1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-interface {p1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_2

    .line 150
    const-string/jumbo v0, "#"

    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 151
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 152
    iget-boolean v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$5;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$5;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/behance/sdk/util/BehanceSDKColorUtils;->getColorFromHexString(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->setSelectedColor(I)V

    .line 154
    iput-boolean v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$5;->b:Z

    goto :goto_0

    .line 157
    :cond_3
    iput-boolean v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$5;->b:Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method
