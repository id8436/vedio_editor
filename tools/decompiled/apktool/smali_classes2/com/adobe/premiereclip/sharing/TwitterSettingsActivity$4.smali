.class Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$4;
.super Lcom/twitter/sdk/android/core/c;
.source "TwitterSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/twitter/sdk/android/core/aj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$4;->this$0:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/ah;)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/s",
            "<",
            "Lcom/twitter/sdk/android/core/aj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$4;->this$0:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/aj;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/aj;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iput-object v0, v1, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->twitterAuthToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 197
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$4;->this$0:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/aj;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/aj;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->accountName:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$4;->this$0:Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->access$200(Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;)V

    .line 199
    return-void
.end method
