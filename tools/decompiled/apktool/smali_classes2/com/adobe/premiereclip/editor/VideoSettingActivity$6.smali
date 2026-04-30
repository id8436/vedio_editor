.class Lcom/adobe/premiereclip/editor/VideoSettingActivity$6;
.super Ljava/lang/Object;
.source "VideoSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/VideoSettingActivity;

.field final synthetic val$sw:Landroid/support/v7/widget/SwitchCompat;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/VideoSettingActivity;Landroid/widget/TextView;Landroid/support/v7/widget/SwitchCompat;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity$6;->this$0:Lcom/adobe/premiereclip/editor/VideoSettingActivity;

    iput-object p2, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity$6;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity$6;->val$sw:Landroid/support/v7/widget/SwitchCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity$6;->this$0:Lcom/adobe/premiereclip/editor/VideoSettingActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->access$400(Lcom/adobe/premiereclip/editor/VideoSettingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setGraphicOverlay(ZLjava/lang/String;)V

    .line 207
    if-eqz p2, :cond_0

    .line 208
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity$6;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity$6;->this$0:Lcom/adobe/premiereclip/editor/VideoSettingActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->access$400(Lcom/adobe/premiereclip/editor/VideoSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXReader;->getOverlayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity$6;->val$textView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity$6;->val$sw:Landroid/support/v7/widget/SwitchCompat;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXReader;->getPreferenceOverlayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
