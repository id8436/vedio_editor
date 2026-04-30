.class Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$2;
.super Ljava/lang/Object;
.source "CloudPickerActivity.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;

.field final synthetic val$availableClouds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$2;->this$0:Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;

    iput-object p2, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$2;->val$availableClouds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 141
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$2;->onCompletion(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCompletion(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 146
    iget-object v2, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$2;->val$availableClouds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$2;->this$0:Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$2;->val$availableClouds:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->_availableClouds:Ljava/util/ArrayList;

    .line 150
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity$2;->this$0:Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;->access$000(Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;)V

    .line 151
    return-void
.end method
