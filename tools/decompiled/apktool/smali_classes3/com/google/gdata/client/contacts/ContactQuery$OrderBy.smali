.class public final enum Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;
.super Ljava/lang/Enum;
.source "ContactQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

.field public static final enum EDITED:Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

.field public static final enum LAST_MODIFIED:Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

.field public static final enum NONE:Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    const-string/jumbo v1, "EDITED"

    const-string/jumbo v2, "edited"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;->EDITED:Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    .line 52
    new-instance v0, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    const-string/jumbo v1, "LAST_MODIFIED"

    const-string/jumbo v2, "lastmodified"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;->LAST_MODIFIED:Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    .line 55
    new-instance v0, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    const-string/jumbo v1, "NONE"

    const-string/jumbo v2, "none"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;->NONE:Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    sget-object v1, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;->EDITED:Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;->LAST_MODIFIED:Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;->NONE:Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;->$VALUES:[Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;->value:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;->$VALUES:[Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    invoke-virtual {v0}, [Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    return-object v0
.end method


# virtual methods
.method public toValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;->value:Ljava/lang/String;

    return-object v0
.end method
