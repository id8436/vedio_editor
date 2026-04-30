.class final enum Lc/a/a/a/a/b/o;
.super Ljava/lang/Enum;
.source "CommonUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lc/a/a/a/a/b/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/a/a/a/a/b/o;

.field public static final enum b:Lc/a/a/a/a/b/o;

.field public static final enum c:Lc/a/a/a/a/b/o;

.field public static final enum d:Lc/a/a/a/a/b/o;

.field public static final enum e:Lc/a/a/a/a/b/o;

.field public static final enum f:Lc/a/a/a/a/b/o;

.field public static final enum g:Lc/a/a/a/a/b/o;

.field public static final enum h:Lc/a/a/a/a/b/o;

.field public static final enum i:Lc/a/a/a/a/b/o;

.field public static final enum j:Lc/a/a/a/a/b/o;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc/a/a/a/a/b/o;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic l:[Lc/a/a/a/a/b/o;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 168
    new-instance v0, Lc/a/a/a/a/b/o;

    const-string/jumbo v1, "X86_32"

    invoke-direct {v0, v1, v4}, Lc/a/a/a/a/b/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a/a/b/o;->a:Lc/a/a/a/a/b/o;

    .line 169
    new-instance v0, Lc/a/a/a/a/b/o;

    const-string/jumbo v1, "X86_64"

    invoke-direct {v0, v1, v5}, Lc/a/a/a/a/b/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a/a/b/o;->b:Lc/a/a/a/a/b/o;

    .line 170
    new-instance v0, Lc/a/a/a/a/b/o;

    const-string/jumbo v1, "ARM_UNKNOWN"

    invoke-direct {v0, v1, v6}, Lc/a/a/a/a/b/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a/a/b/o;->c:Lc/a/a/a/a/b/o;

    .line 171
    new-instance v0, Lc/a/a/a/a/b/o;

    const-string/jumbo v1, "PPC"

    invoke-direct {v0, v1, v7}, Lc/a/a/a/a/b/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a/a/b/o;->d:Lc/a/a/a/a/b/o;

    .line 172
    new-instance v0, Lc/a/a/a/a/b/o;

    const-string/jumbo v1, "PPC64"

    invoke-direct {v0, v1, v3}, Lc/a/a/a/a/b/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a/a/b/o;->e:Lc/a/a/a/a/b/o;

    .line 173
    new-instance v0, Lc/a/a/a/a/b/o;

    const-string/jumbo v1, "ARMV6"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lc/a/a/a/a/b/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a/a/b/o;->f:Lc/a/a/a/a/b/o;

    .line 174
    new-instance v0, Lc/a/a/a/a/b/o;

    const-string/jumbo v1, "ARMV7"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lc/a/a/a/a/b/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a/a/b/o;->g:Lc/a/a/a/a/b/o;

    .line 175
    new-instance v0, Lc/a/a/a/a/b/o;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lc/a/a/a/a/b/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a/a/b/o;->h:Lc/a/a/a/a/b/o;

    .line 176
    new-instance v0, Lc/a/a/a/a/b/o;

    const-string/jumbo v1, "ARMV7S"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lc/a/a/a/a/b/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a/a/b/o;->i:Lc/a/a/a/a/b/o;

    .line 177
    new-instance v0, Lc/a/a/a/a/b/o;

    const-string/jumbo v1, "ARM64"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lc/a/a/a/a/b/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a/a/b/o;->j:Lc/a/a/a/a/b/o;

    .line 167
    const/16 v0, 0xa

    new-array v0, v0, [Lc/a/a/a/a/b/o;

    sget-object v1, Lc/a/a/a/a/b/o;->a:Lc/a/a/a/a/b/o;

    aput-object v1, v0, v4

    sget-object v1, Lc/a/a/a/a/b/o;->b:Lc/a/a/a/a/b/o;

    aput-object v1, v0, v5

    sget-object v1, Lc/a/a/a/a/b/o;->c:Lc/a/a/a/a/b/o;

    aput-object v1, v0, v6

    sget-object v1, Lc/a/a/a/a/b/o;->d:Lc/a/a/a/a/b/o;

    aput-object v1, v0, v7

    sget-object v1, Lc/a/a/a/a/b/o;->e:Lc/a/a/a/a/b/o;

    aput-object v1, v0, v3

    const/4 v1, 0x5

    sget-object v2, Lc/a/a/a/a/b/o;->f:Lc/a/a/a/a/b/o;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lc/a/a/a/a/b/o;->g:Lc/a/a/a/a/b/o;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lc/a/a/a/a/b/o;->h:Lc/a/a/a/a/b/o;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lc/a/a/a/a/b/o;->i:Lc/a/a/a/a/b/o;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lc/a/a/a/a/b/o;->j:Lc/a/a/a/a/b/o;

    aput-object v2, v0, v1

    sput-object v0, Lc/a/a/a/a/b/o;->l:[Lc/a/a/a/a/b/o;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lc/a/a/a/a/b/o;->k:Ljava/util/Map;

    .line 182
    sget-object v0, Lc/a/a/a/a/b/o;->k:Ljava/util/Map;

    const-string/jumbo v1, "armeabi-v7a"

    sget-object v2, Lc/a/a/a/a/b/o;->g:Lc/a/a/a/a/b/o;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lc/a/a/a/a/b/o;->k:Ljava/util/Map;

    const-string/jumbo v1, "armeabi"

    sget-object v2, Lc/a/a/a/a/b/o;->f:Lc/a/a/a/a/b/o;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lc/a/a/a/a/b/o;->k:Ljava/util/Map;

    const-string/jumbo v1, "x86"

    sget-object v2, Lc/a/a/a/a/b/o;->a:Lc/a/a/a/a/b/o;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a()Lc/a/a/a/a/b/o;
    .locals 3

    .prologue
    .line 192
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, "Architecture#getValue()::Build.CPU_ABI returned null or empty"

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lc/a/a/a/a/b/o;->h:Lc/a/a/a/a/b/o;

    .line 205
    :cond_0
    :goto_0
    return-object v0

    .line 200
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 201
    sget-object v1, Lc/a/a/a/a/b/o;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a/a/b/o;

    .line 202
    if-nez v0, :cond_0

    .line 203
    sget-object v0, Lc/a/a/a/a/b/o;->h:Lc/a/a/a/a/b/o;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lc/a/a/a/a/b/o;
    .locals 1

    .prologue
    .line 167
    const-class v0, Lc/a/a/a/a/b/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lc/a/a/a/a/b/o;

    return-object v0
.end method

.method public static values()[Lc/a/a/a/a/b/o;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lc/a/a/a/a/b/o;->l:[Lc/a/a/a/a/b/o;

    invoke-virtual {v0}, [Lc/a/a/a/a/b/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/a/a/a/b/o;

    return-object v0
.end method
