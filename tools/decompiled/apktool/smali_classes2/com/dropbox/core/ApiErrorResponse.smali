.class final Lcom/dropbox/core/ApiErrorResponse;
.super Ljava/lang/Object;
.source "ApiErrorResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final error:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private userMessage:Lcom/dropbox/core/LocalizedText;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/dropbox/core/LocalizedText;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/dropbox/core/LocalizedText;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "error"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/ApiErrorResponse;->error:Ljava/lang/Object;

    .line 22
    iput-object p2, p0, Lcom/dropbox/core/ApiErrorResponse;->userMessage:Lcom/dropbox/core/LocalizedText;

    .line 23
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dropbox/core/ApiErrorResponse;->error:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserMessage()Lcom/dropbox/core/LocalizedText;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/ApiErrorResponse;->userMessage:Lcom/dropbox/core/LocalizedText;

    return-object v0
.end method
