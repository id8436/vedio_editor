.class public final Ld/a/a/d;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# instance fields
.field public final a:Ld/ax;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ld/bd;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ld/ax;Ld/bd;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Ld/a/a/d;->a:Ld/ax;

    .line 59
    iput-object p2, p0, Ld/a/a/d;->b:Ld/bd;

    .line 60
    return-void
.end method

.method public static a(Ld/bd;Ld/ax;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0}, Ld/bd;->b()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 86
    :sswitch_0
    const-string/jumbo v1, "Expires"

    invoke-virtual {p0, v1}, Ld/bd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 87
    invoke-virtual {p0}, Ld/bd;->i()Ld/e;

    move-result-object v1

    invoke-virtual {v1}, Ld/e;->c()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 88
    invoke-virtual {p0}, Ld/bd;->i()Ld/e;

    move-result-object v1

    invoke-virtual {v1}, Ld/e;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    invoke-virtual {p0}, Ld/bd;->i()Ld/e;

    move-result-object v1

    invoke-virtual {v1}, Ld/e;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Ld/bd;->i()Ld/e;

    move-result-object v1

    invoke-virtual {v1}, Ld/e;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ld/ax;->f()Ld/e;

    move-result-object v1

    invoke-virtual {v1}, Ld/e;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 66
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
