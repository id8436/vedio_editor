.class public abstract Ld/a/e/s;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# static fields
.field public static final f:Ld/a/e/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 860
    new-instance v0, Ld/a/e/t;

    invoke-direct {v0}, Ld/a/e/t;-><init>()V

    sput-object v0, Ld/a/e/s;->f:Ld/a/e/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ld/a/e/ab;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public a(Ld/a/e/j;)V
    .locals 0

    .prologue
    .line 882
    return-void
.end method
