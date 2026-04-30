.class final Lcom/google/api/client/util/BackOff$2;
.super Ljava/lang/Object;
.source "BackOff.java"

# interfaces
.implements Lcom/google/api/client/util/BackOff;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextBackOffMillis()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    return-void
.end method
