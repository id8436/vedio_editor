.class public Lcom/a/a/a/i/a/l;
.super Ljava/lang/Object;
.source "Where.java"


# static fields
.field static final d:Ljava/lang/String;

.field static final e:Ljava/lang/String;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field private f:Landroid/database/sqlite/SQLiteStatement;

.field private g:Ljava/lang/String;

.field private h:Landroid/database/sqlite/SQLiteStatement;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/i/a/l;->d:Ljava/lang/String;

    .line 18
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/i/a/l;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/a/a/a/i/a/l;->a:J

    .line 22
    iput-object p3, p0, Lcom/a/a/a/i/a/l;->b:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/a/a/a/i/a/l;->c:[Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/a/a/a/i/a/c;)Landroid/database/sqlite/SQLiteStatement;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 52
    iget-object v0, p0, Lcom/a/a/a/i/a/l;->h:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/a/a/a/i/a/a;->j:Lcom/a/a/a/i/a/g;

    iget-object v0, v0, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/a/i/a/l;->b:Ljava/lang/String;

    new-array v3, v5, [Lcom/a/a/a/i/a/e;

    invoke-virtual {p2, v0, v2, v6, v3}, Lcom/a/a/a/i/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Lcom/a/a/a/i/a/e;)Ljava/lang/String;

    move-result-object v0

    .line 58
    sget-object v2, Lcom/a/a/a/i/a/a;->g:Lcom/a/a/a/i/a/g;

    iget-object v2, v2, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/a/a/a/i/a/l;->b:Ljava/lang/String;

    new-array v4, v5, [Lcom/a/a/a/i/a/e;

    invoke-virtual {p2, v2, v3, v6, v4}, Lcom/a/a/a/i/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Lcom/a/a/a/i/a/e;)Ljava/lang/String;

    move-result-object v2

    .line 62
    iget-object v3, p2, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 64
    const-string/jumbo v4, "SELECT * FROM ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 65
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ORDER BY 1 ASC LIMIT 1"

    .line 66
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ") UNION SELECT * FROM ("

    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ORDER BY 1 ASC LIMIT 1"

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") ORDER BY 1 ASC LIMIT 1"

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/l;->h:Landroid/database/sqlite/SQLiteStatement;

    :goto_0
    move v0, v1

    .line 76
    :goto_1
    iget-object v2, p0, Lcom/a/a/a/i/a/l;->c:[Ljava/lang/String;

    array-length v2, v2

    if-gt v0, v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/a/a/a/i/a/l;->h:Landroid/database/sqlite/SQLiteStatement;

    iget-object v3, p0, Lcom/a/a/a/i/a/l;->c:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/a/a/a/i/a/l;->h:Landroid/database/sqlite/SQLiteStatement;

    iget-object v3, p0, Lcom/a/a/a/i/a/l;->c:[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/a/a/a/i/a/l;->c:[Ljava/lang/String;

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/i/a/l;->h:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/i/a/l;->h:Landroid/database/sqlite/SQLiteStatement;

    sget-object v2, Lcom/a/a/a/i/a/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/a/a/a/i/a/l;->h:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, p0, Lcom/a/a/a/i/a/l;->c:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/a/a/a/i/a/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/a/a/a/i/a/l;->h:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/StringBuilder;)Landroid/database/sqlite/SQLiteStatement;
    .locals 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/a/a/a/i/a/l;->f:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 29
    const-string/jumbo v0, "SELECT SUM(case WHEN "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->d:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is null then group_cnt else 1 end) from ("

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "SELECT count(*) group_cnt, "

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->d:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FROM "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "job_holder"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/i/a/l;->b:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " GROUP BY "

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->d:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/l;->f:Landroid/database/sqlite/SQLiteStatement;

    .line 45
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/a/a/a/i/a/l;->c:[Ljava/lang/String;

    array-length v1, v1

    if-gt v0, v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/a/a/a/i/a/l;->f:Landroid/database/sqlite/SQLiteStatement;

    iget-object v2, p0, Lcom/a/a/a/i/a/l;->c:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/i/a/l;->f:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/i/a/l;->f:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public a(Lcom/a/a/a/i/a/c;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 87
    iget-object v0, p0, Lcom/a/a/a/i/a/l;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/a/a/a/i/a/l;->b:Ljava/lang/String;

    .line 90
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/a/a/a/i/a/e;

    const/4 v3, 0x0

    new-instance v4, Lcom/a/a/a/i/a/e;

    sget-object v5, Lcom/a/a/a/i/a/a;->c:Lcom/a/a/a/i/a/g;

    sget-object v6, Lcom/a/a/a/i/a/f;->b:Lcom/a/a/a/i/a/f;

    invoke-direct {v4, v5, v6}, Lcom/a/a/a/i/a/e;-><init>(Lcom/a/a/a/i/a/g;Lcom/a/a/a/i/a/f;)V

    aput-object v4, v2, v3

    new-instance v3, Lcom/a/a/a/i/a/e;

    sget-object v4, Lcom/a/a/a/i/a/a;->f:Lcom/a/a/a/i/a/g;

    sget-object v5, Lcom/a/a/a/i/a/f;->a:Lcom/a/a/a/i/a/f;

    invoke-direct {v3, v4, v5}, Lcom/a/a/a/i/a/e;-><init>(Lcom/a/a/a/i/a/g;Lcom/a/a/a/i/a/f;)V

    aput-object v3, v2, v7

    const/4 v3, 0x2

    new-instance v4, Lcom/a/a/a/i/a/e;

    sget-object v5, Lcom/a/a/a/i/a/a;->a:Lcom/a/a/a/i/a/g;

    sget-object v6, Lcom/a/a/a/i/a/f;->a:Lcom/a/a/a/i/a/f;

    invoke-direct {v4, v5, v6}, Lcom/a/a/a/i/a/e;-><init>(Lcom/a/a/a/i/a/g;Lcom/a/a/a/i/a/f;)V

    aput-object v4, v2, v3

    .line 88
    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/i/a/c;->a(Ljava/lang/String;Ljava/lang/Integer;[Lcom/a/a/a/i/a/e;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/l;->i:Ljava/lang/String;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/i/a/l;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/a/a/a/i/a/l;->f:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/a/a/a/i/a/l;->f:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 112
    iput-object v1, p0, Lcom/a/a/a/i/a/l;->f:Landroid/database/sqlite/SQLiteStatement;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/i/a/l;->h:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/a/a/a/i/a/l;->h:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 116
    iput-object v1, p0, Lcom/a/a/a/i/a/l;->h:Landroid/database/sqlite/SQLiteStatement;

    .line 118
    :cond_1
    return-void
.end method

.method public b(Lcom/a/a/a/i/a/c;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/a/a/a/i/a/l;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/a/a/a/i/a/l;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/a/a/a/i/a/e;

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/i/a/c;->a(Ljava/lang/String;Ljava/lang/Integer;[Lcom/a/a/a/i/a/e;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/l;->g:Ljava/lang/String;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/i/a/l;->g:Ljava/lang/String;

    return-object v0
.end method
