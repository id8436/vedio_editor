.class Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$6;
.super Landroid/content/BroadcastReceiver;
.source "CrashlyticsUncaughtExceptionHandler.java"


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$6;->this$0:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$6;->this$0:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->access$102(Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;Z)Z

    .line 242
    return-void
.end method
