.class public Lc/a/a/a/a/g/w;
.super Ljava/lang/Object;
.source "SettingsData.java"


# instance fields
.field public final a:Lc/a/a/a/a/g/e;

.field public final b:Lc/a/a/a/a/g/p;

.field public final c:Lc/a/a/a/a/g/o;

.field public final d:Lc/a/a/a/a/g/m;

.field public final e:Lc/a/a/a/a/g/b;

.field public final f:Lc/a/a/a/a/g/f;

.field public final g:J

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(JLc/a/a/a/a/g/e;Lc/a/a/a/a/g/p;Lc/a/a/a/a/g/o;Lc/a/a/a/a/g/m;Lc/a/a/a/a/g/b;Lc/a/a/a/a/g/f;II)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lc/a/a/a/a/g/w;->g:J

    .line 41
    iput-object p3, p0, Lc/a/a/a/a/g/w;->a:Lc/a/a/a/a/g/e;

    .line 42
    iput-object p4, p0, Lc/a/a/a/a/g/w;->b:Lc/a/a/a/a/g/p;

    .line 43
    iput-object p5, p0, Lc/a/a/a/a/g/w;->c:Lc/a/a/a/a/g/o;

    .line 44
    iput-object p6, p0, Lc/a/a/a/a/g/w;->d:Lc/a/a/a/a/g/m;

    .line 45
    iput p9, p0, Lc/a/a/a/a/g/w;->h:I

    .line 46
    iput p10, p0, Lc/a/a/a/a/g/w;->i:I

    .line 47
    iput-object p7, p0, Lc/a/a/a/a/g/w;->e:Lc/a/a/a/a/g/b;

    .line 48
    iput-object p8, p0, Lc/a/a/a/a/g/w;->f:Lc/a/a/a/a/g/f;

    .line 49
    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 3

    .prologue
    .line 52
    iget-wide v0, p0, Lc/a/a/a/a/g/w;->g:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
