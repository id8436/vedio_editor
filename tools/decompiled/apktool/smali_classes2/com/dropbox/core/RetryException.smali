.class public Lcom/dropbox/core/RetryException;
.super Lcom/dropbox/core/DbxException;
.source "RetryException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final backoffMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 21
    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/RetryException;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/DbxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/core/RetryException;->backoffMillis:J

    .line 36
    return-void
.end method


# virtual methods
.method public getBackoffMillis()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/dropbox/core/RetryException;->backoffMillis:J

    return-wide v0
.end method
