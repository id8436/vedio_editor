.class public Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;
.super Landroid/os/AsyncTask;
.source "YouTubeGetTokenAsync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field TAG:Ljava/lang/String;

.field final activity:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

.field error:Z

.field mAccountName:Ljava/lang/String;

.field mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

.field nWError:Z

.field token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    const-string/jumbo v0, "YouTubeGetTokenTask"

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->TAG:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->activity:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    .line 48
    iget-object v0, p1, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->accountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->mAccountName:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 50
    iput-boolean v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->error:Z

    .line 51
    iput-boolean v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->nWError:Z

    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->mAccountName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method static run(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;)V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;-><init>(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->token:Ljava/lang/String;

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->token:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got Token for YouTube"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->token:Ljava/lang/String;

    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 64
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-boolean v3, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->nWError:Z

    goto :goto_0

    .line 66
    :catch_1
    move-exception v0

    .line 68
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->activity:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->activity:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 71
    invoke-virtual {p0, v3}, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->cancel(Z)Z

    goto :goto_0

    .line 72
    :catch_2
    move-exception v0

    .line 76
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/GoogleAuthException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput-boolean v3, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->error:Z

    goto :goto_0

    .line 78
    :catch_3
    move-exception v0

    .line 79
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput-boolean v3, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->error:Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "In Post Execute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->nWError:Z

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->activity:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->showNetworkError()V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->error:Z

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->activity:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->showGenericError()V

    goto :goto_0

    .line 93
    :cond_2
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->activity:Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->publishVideoToYouTube()V

    goto :goto_0
.end method
