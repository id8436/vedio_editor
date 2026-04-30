.class Lcom/crashlytics/android/core/CrashlyticsCore$3;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
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
    .line 812
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$3;->this$0:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 816
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore$3;->this$0:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-static {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->access$000(Lcom/crashlytics/android/core/CrashlyticsCore;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 817
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Initialization marker file removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 823
    :goto_0
    return-object v0

    .line 820
    :catch_0
    move-exception v0

    .line 821
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Problem encountered deleting Crashlytics initialization marker."

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 823
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore$3;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
