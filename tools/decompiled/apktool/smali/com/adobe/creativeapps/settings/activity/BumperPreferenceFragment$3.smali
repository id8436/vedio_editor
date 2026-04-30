.class Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$3;
.super Ljava/lang/Object;
.source "BumperPreferenceFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$3;->this$0:Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    .line 122
    const-string/jumbo v0, "BumperPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "video view error what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment$3;->this$0:Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;->access$100(Lcom/adobe/creativeapps/settings/activity/BumperPreferenceFragment;)V

    .line 124
    const/4 v0, 0x1

    return v0
.end method
