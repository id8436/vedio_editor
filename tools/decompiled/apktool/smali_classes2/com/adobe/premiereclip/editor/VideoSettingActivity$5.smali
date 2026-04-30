.class Lcom/adobe/premiereclip/editor/VideoSettingActivity$5;
.super Ljava/lang/Object;
.source "VideoSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/VideoSettingActivity;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/VideoSettingActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity$5;->this$0:Lcom/adobe/premiereclip/editor/VideoSettingActivity;

    iput-object p2, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity$5;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity$5;->this$0:Lcom/adobe/premiereclip/editor/VideoSettingActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->access$400(Lcom/adobe/premiereclip/editor/VideoSettingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setVideoBumperState(ZLjava/lang/String;)V

    .line 178
    if-eqz p2, :cond_0

    .line 179
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity$5;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity$5;->this$0:Lcom/adobe/premiereclip/editor/VideoSettingActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/VideoSettingActivity;->access$400(Lcom/adobe/premiereclip/editor/VideoSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXReader;->getBumperName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/VideoSettingActivity$5;->val$textView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
