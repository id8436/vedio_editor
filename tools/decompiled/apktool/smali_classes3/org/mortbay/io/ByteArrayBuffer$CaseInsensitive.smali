.class public Lorg/mortbay/io/ByteArrayBuffer$CaseInsensitive;
.super Lorg/mortbay/io/ByteArrayBuffer;
.source "ByteArrayBuffer.java"

# interfaces
.implements Lorg/mortbay/io/Buffer$CaseInsensitve;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([BIII)V

    .line 420
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 424
    check-cast p1, Lorg/mortbay/io/Buffer;

    invoke-virtual {p0, p1}, Lorg/mortbay/io/ByteArrayBuffer$CaseInsensitive;->equalsIgnoreCase(Lorg/mortbay/io/Buffer;)Z

    move-result v0

    return v0
.end method
