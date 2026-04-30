.class Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$1;
.super Ljava/lang/Object;
.source "AutomaticActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$1;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting$1;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$SoundSetting;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->openSongCategories(Landroid/view/View;)V

    .line 853
    return-void
.end method
