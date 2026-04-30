.class public Lcom/a/a/a/i/a/c;
.super Ljava/lang/Object;
.source "SqlHelper.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field final f:Ljava/lang/StringBuilder;

.field final g:Landroid/database/sqlite/SQLiteDatabase;

.field final h:Ljava/lang/String;

.field final i:Ljava/lang/String;

.field final j:I

.field final k:Ljava/lang/String;

.field final l:I

.field final m:J

.field private n:Landroid/database/sqlite/SQLiteStatement;

.field private o:Landroid/database/sqlite/SQLiteStatement;

.field private p:Landroid/database/sqlite/SQLiteStatement;

.field private q:Landroid/database/sqlite/SQLiteStatement;

.field private r:Landroid/database/sqlite/SQLiteStatement;

.field private s:Landroid/database/sqlite/SQLiteStatement;

.field private t:Landroid/database/sqlite/SQLiteStatement;

.field private u:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJ)V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    .line 40
    iput-object p1, p0, Lcom/a/a/a/i/a/c;->g:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    iput-object p2, p0, Lcom/a/a/a/i/a/c;->h:Ljava/lang/String;

    .line 42
    iput p4, p0, Lcom/a/a/a/i/a/c;->j:I

    .line 43
    iput-object p3, p0, Lcom/a/a/a/i/a/c;->i:Ljava/lang/String;

    .line 44
    iput-wide p7, p0, Lcom/a/a/a/i/a/c;->m:J

    .line 45
    iput p6, p0, Lcom/a/a/a/i/a/c;->l:I

    .line 46
    iput-object p5, p0, Lcom/a/a/a/i/a/c;->k:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->b:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/c;->a:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->b:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " IN ( SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->n:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->o:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/c;->b:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->b:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/c;->c:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->o:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "job_holder_tags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->n:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/c;->d:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->l:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/c;->e:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;Lcom/a/a/a/i/a/g;[Lcom/a/a/a/i/a/g;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v0, p1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v0, p1, Lcom/a/a/a/i/a/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v0, "  primary key "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    array-length v3, p2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p2, v0

    .line 66
    const-string/jumbo v5, ", `"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "` "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/a/a/a/i/a/g;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-boolean v4, v4, Lcom/a/a/a/i/a/g;->e:Z

    if-eqz v4, :cond_0

    .line 68
    const-string/jumbo v4, " UNIQUE"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    array-length v3, p2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, p2, v0

    .line 72
    iget-object v5, v4, Lcom/a/a/a/i/a/g;->d:Lcom/a/a/a/i/a/d;

    if-eqz v5, :cond_2

    .line 73
    iget-object v5, v4, Lcom/a/a/a/i/a/g;->d:Lcom/a/a/a/i/a/d;

    .line 74
    const-string/jumbo v6, ", FOREIGN KEY(`"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v4, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "`) REFERENCES "

    .line 75
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v5, Lcom/a/a/a/i/a/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "(`"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v5, Lcom/a/a/a/i/a/d;->b:Ljava/lang/String;

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "`) ON DELETE CASCADE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_3
    const-string/jumbo v0, " );"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/StringBuilder;I)V
    .locals 2

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cannot create placeholders for 0 items"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    const-string/jumbo v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 240
    const-string/jumbo v1, ",?"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->n:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 91
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "INSERT INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/i/a/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v2, " VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :goto_0
    iget v1, p0, Lcom/a/a/a/i/a/c;->j:I

    if-ge v0, v1, :cond_1

    .line 94
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->g:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/c;->n:Landroid/database/sqlite/SQLiteStatement;

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->n:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/Integer;[Lcom/a/a/a/i/a/e;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 187
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SELECT * FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/a/a/a/i/a/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    if-eqz p1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_0
    const/4 v0, 0x1

    .line 193
    array-length v3, p3

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, p3, v0

    .line 194
    if-eqz v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v5, " ORDER BY "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :goto_1
    iget-object v2, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/a/a/a/i/a/e;->a:Lcom/a/a/a/i/a/g;

    iget-object v5, v5, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v4, Lcom/a/a/a/i/a/e;->b:Lcom/a/a/a/i/a/f;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 202
    :cond_2
    if-eqz p2, :cond_3

    .line 203
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[Lcom/a/a/a/i/a/e;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 212
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SELECT "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/a/i/a/c;->h:Ljava/lang/String;

    .line 214
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    if-eqz p2, :cond_0

    .line 216
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_0
    const/4 v0, 0x1

    .line 219
    array-length v3, p4

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, p4, v0

    .line 220
    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v5, " ORDER BY "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :goto_1
    iget-object v2, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/a/a/a/i/a/e;->a:Lcom/a/a/a/i/a/g;

    iget-object v5, v5, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v4, Lcom/a/a/a/i/a/e;->b:Lcom/a/a/a/i/a/f;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 228
    :cond_2
    if-eqz p3, :cond_3

    .line 229
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 255
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->g:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UPDATE job_holder SET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/i/a/a;->g:Lcom/a/a/a/i/a/g;

    iget-object v2, v2, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 257
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 255
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public b()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->o:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 108
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "INSERT INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "job_holder_tags"

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v2, " VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :goto_0
    iget v1, p0, Lcom/a/a/a/i/a/c;->l:I

    if-ge v0, v1, :cond_1

    .line 112
    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->g:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/c;->o:Landroid/database/sqlite/SQLiteStatement;

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->o:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public c()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->t:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->g:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT COUNT(*) FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/i/a/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/i/a/a;->h:Lcom/a/a/a/i/a/g;

    iget-object v2, v2, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/c;->t:Landroid/database/sqlite/SQLiteStatement;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->t:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public d()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->p:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 134
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "INSERT OR REPLACE INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/i/a/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v2, " VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :goto_0
    iget v1, p0, Lcom/a/a/a/i/a/c;->j:I

    if-ge v0, v1, :cond_1

    .line 137
    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->g:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/a/a/a/i/a/c;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/c;->p:Landroid/database/sqlite/SQLiteStatement;

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->p:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public e()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->q:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->g:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/i/a/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/i/a/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/c;->q:Landroid/database/sqlite/SQLiteStatement;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->q:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public f()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->r:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->g:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/i/a/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/i/a/a;->n:Lcom/a/a/a/i/a/g;

    iget-object v2, v2, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "= ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/c;->r:Landroid/database/sqlite/SQLiteStatement;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->r:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public g()Landroid/database/sqlite/SQLiteStatement;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->s:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/i/a/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->e:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ? , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->h:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/i/a/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/c;->s:Landroid/database/sqlite/SQLiteStatement;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->s:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public h()Landroid/database/sqlite/SQLiteStatement;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->u:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/i/a/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/i/a/a;->l:Lcom/a/a/a/i/a/g;

    iget-object v1, v1, Lcom/a/a/a/i/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/i/a/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/a/a/a/i/a/c;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/i/a/c;->u:Landroid/database/sqlite/SQLiteStatement;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->u:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "DELETE FROM job_holder"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "DELETE FROM job_holder_tags"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/a/a/a/i/a/c;->j()V

    .line 248
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/a/a/a/i/a/c;->g:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "VACUUM"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 252
    return-void
.end method
