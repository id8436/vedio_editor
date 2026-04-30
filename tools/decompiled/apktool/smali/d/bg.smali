.class final Ld/bg;
.super Ld/bf;
.source "ResponseBody.java"


# instance fields
.field final synthetic a:Ld/an;

.field final synthetic b:J

.field final synthetic c:Le/j;


# direct methods
.method constructor <init>(Ld/an;JLe/j;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Ld/bg;->a:Ld/an;

    iput-wide p2, p0, Ld/bg;->b:J

    iput-object p4, p0, Ld/bg;->c:Le/j;

    invoke-direct {p0}, Ld/bf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ld/an;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Ld/bg;->a:Ld/an;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Ld/bg;->b:J

    return-wide v0
.end method

.method public d()Le/j;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Ld/bg;->c:Le/j;

    return-object v0
.end method
