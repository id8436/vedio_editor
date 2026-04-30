.class final Lcom/adobe/customextractor/Util/Utilities$1;
.super Ljava/lang/Object;
.source "Utilities.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic val$threadName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/adobe/customextractor/Util/Utilities$1;->val$threadName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/adobe/customextractor/Util/Utilities$1;->val$threadName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
