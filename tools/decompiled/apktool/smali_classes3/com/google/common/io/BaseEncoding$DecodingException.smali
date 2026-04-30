.class public final Lcom/google/common/io/BaseEncoding$DecodingException;
.super Ljava/io/IOException;
.source "BaseEncoding.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 150
    invoke-virtual {p0, p1}, Lcom/google/common/io/BaseEncoding$DecodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 151
    return-void
.end method
