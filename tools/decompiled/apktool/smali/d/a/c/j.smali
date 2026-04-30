.class public final Ld/a/c/j;
.super Ld/bf;
.source "RealResponseBody.java"


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final b:J

.field private final c:Le/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLe/j;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-direct {p0}, Ld/bf;-><init>()V

    .line 34
    iput-object p1, p0, Ld/a/c/j;->a:Ljava/lang/String;

    .line 35
    iput-wide p2, p0, Ld/a/c/j;->b:J

    .line 36
    iput-object p4, p0, Ld/a/c/j;->c:Le/j;

    .line 37
    return-void
.end method


# virtual methods
.method public a()Ld/an;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ld/a/c/j;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a/c/j;->a:Ljava/lang/String;

    invoke-static {v0}, Ld/an;->a(Ljava/lang/String;)Ld/an;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Ld/a/c/j;->b:J

    return-wide v0
.end method

.method public d()Le/j;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ld/a/c/j;->c:Le/j;

    return-object v0
.end method
