.class Lcom/crashlytics/android/core/CrashlyticsCore$6;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Lc/a/a/a/a/g/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/a/a/g/t",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsCore;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsCore;)V
    .locals 0

    .prologue
    .line 908
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$6;->this$0:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public usingSettings(Lc/a/a/a/a/g/w;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 911
    const/4 v0, 0x1

    .line 913
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$6;->this$0:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/CrashlyticsCore;->getFabric()Lc/a/a/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lc/a/a/a/f;->b()Landroid/app/Activity;

    move-result-object v1

    .line 915
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsCore$6;->this$0:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/CrashlyticsCore;->shouldPromptUserBeforeSendingCrashReports()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 917
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore$6;->this$0:Lcom/crashlytics/android/core/CrashlyticsCore;

    iget-object v2, p1, Lc/a/a/a/a/g/w;->c:Lc/a/a/a/a/g/o;

    invoke-static {v0, v1, v2}, Lcom/crashlytics/android/core/CrashlyticsCore;->access$100(Lcom/crashlytics/android/core/CrashlyticsCore;Landroid/app/Activity;Lc/a/a/a/a/g/o;)Z

    move-result v0

    .line 920
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic usingSettings(Lc/a/a/a/a/g/w;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 908
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore$6;->usingSettings(Lc/a/a/a/a/g/w;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
