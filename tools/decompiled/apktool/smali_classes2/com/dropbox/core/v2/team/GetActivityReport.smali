.class public Lcom/dropbox/core/v2/team/GetActivityReport;
.super Lcom/dropbox/core/v2/team/BaseDfbReport;
.source "GetActivityReport.java"


# instance fields
.field protected final activeSharedFolders1Day:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final activeSharedFolders28Day:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final activeSharedFolders7Day:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final activeUsers1Day:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final activeUsers28Day:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final activeUsers7Day:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final adds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final deletes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final edits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final sharedLinksCreated:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final sharedLinksViewedByNotLoggedIn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final sharedLinksViewedByOutsideUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final sharedLinksViewedByTeam:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final sharedLinksViewedTotal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/team/BaseDfbReport;-><init>(Ljava/lang/String;)V

    .line 94
    if-nez p2, :cond_0

    .line 95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'adds\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 98
    if-nez v1, :cond_1

    .line 99
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'adds\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->adds:Ljava/util/List;

    .line 103
    if-nez p3, :cond_3

    .line 104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'edits\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 107
    if-nez v1, :cond_4

    .line 108
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'edits\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_5
    iput-object p3, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->edits:Ljava/util/List;

    .line 112
    if-nez p4, :cond_6

    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'deletes\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_6
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 116
    if-nez v1, :cond_7

    .line 117
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'deletes\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_8
    iput-object p4, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->deletes:Ljava/util/List;

    .line 121
    if-nez p5, :cond_9

    .line 122
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'activeUsers28Day\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_9
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 125
    if-nez v1, :cond_a

    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'activeUsers28Day\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_b
    iput-object p5, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers28Day:Ljava/util/List;

    .line 130
    if-nez p6, :cond_c

    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'activeUsers7Day\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_c
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 134
    if-nez v1, :cond_d

    .line 135
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'activeUsers7Day\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_e
    iput-object p6, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers7Day:Ljava/util/List;

    .line 139
    if-nez p7, :cond_f

    .line 140
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'activeUsers1Day\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_f
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 143
    if-nez v1, :cond_10

    .line 144
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'activeUsers1Day\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_11
    iput-object p7, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers1Day:Ljava/util/List;

    .line 148
    if-nez p8, :cond_12

    .line 149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'activeSharedFolders28Day\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_12
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 152
    if-nez v1, :cond_13

    .line 153
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'activeSharedFolders28Day\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_14
    iput-object p8, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders28Day:Ljava/util/List;

    .line 157
    if-nez p9, :cond_15

    .line 158
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'activeSharedFolders7Day\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_15
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 161
    if-nez v1, :cond_16

    .line 162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'activeSharedFolders7Day\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_17
    iput-object p9, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders7Day:Ljava/util/List;

    .line 166
    if-nez p10, :cond_18

    .line 167
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'activeSharedFolders1Day\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_18
    invoke-interface {p10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 170
    if-nez v1, :cond_19

    .line 171
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'activeSharedFolders1Day\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_1a
    iput-object p10, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders1Day:Ljava/util/List;

    .line 175
    if-nez p11, :cond_1b

    .line 176
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'sharedLinksCreated\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_1b
    invoke-interface {p11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 179
    if-nez v1, :cond_1c

    .line 180
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'sharedLinksCreated\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_1d
    iput-object p11, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksCreated:Ljava/util/List;

    .line 184
    if-nez p12, :cond_1e

    .line 185
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'sharedLinksViewedByTeam\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_1e
    invoke-interface {p12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 188
    if-nez v1, :cond_1f

    .line 189
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'sharedLinksViewedByTeam\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_20
    iput-object p12, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByTeam:Ljava/util/List;

    .line 193
    if-nez p13, :cond_21

    .line 194
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'sharedLinksViewedByOutsideUser\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_21
    invoke-interface/range {p13 .. p13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 197
    if-nez v1, :cond_22

    .line 198
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'sharedLinksViewedByOutsideUser\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_23
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByOutsideUser:Ljava/util/List;

    .line 202
    if-nez p14, :cond_24

    .line 203
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'sharedLinksViewedByNotLoggedIn\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_24
    invoke-interface/range {p14 .. p14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 206
    if-nez v1, :cond_25

    .line 207
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'sharedLinksViewedByNotLoggedIn\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_26
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByNotLoggedIn:Ljava/util/List;

    .line 211
    if-nez p15, :cond_27

    .line 212
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'sharedLinksViewedTotal\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_27
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 215
    if-nez v1, :cond_28

    .line 216
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'sharedLinksViewedTotal\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_29
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedTotal:Ljava/util/List;

    .line 220
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 387
    if-ne p1, p0, :cond_1

    .line 414
    :cond_0
    :goto_0
    return v0

    .line 390
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 391
    goto :goto_0

    .line 394
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 395
    check-cast p1, Lcom/dropbox/core/v2/team/GetActivityReport;

    .line 396
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->startDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->startDate:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->startDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->startDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->adds:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->adds:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->adds:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->adds:Ljava/util/List;

    .line 397
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->edits:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->edits:Ljava/util/List;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->edits:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->edits:Ljava/util/List;

    .line 398
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->deletes:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->deletes:Ljava/util/List;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->deletes:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->deletes:Ljava/util/List;

    .line 399
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers28Day:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers28Day:Ljava/util/List;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers28Day:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers28Day:Ljava/util/List;

    .line 400
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers7Day:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers7Day:Ljava/util/List;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers7Day:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers7Day:Ljava/util/List;

    .line 401
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers1Day:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers1Day:Ljava/util/List;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers1Day:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers1Day:Ljava/util/List;

    .line 402
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders28Day:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders28Day:Ljava/util/List;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders28Day:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders28Day:Ljava/util/List;

    .line 403
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders7Day:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders7Day:Ljava/util/List;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders7Day:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders7Day:Ljava/util/List;

    .line 404
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_b
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders1Day:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders1Day:Ljava/util/List;

    if-eq v2, v3, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders1Day:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders1Day:Ljava/util/List;

    .line 405
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_c
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksCreated:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksCreated:Ljava/util/List;

    if-eq v2, v3, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksCreated:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksCreated:Ljava/util/List;

    .line 406
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_d
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByTeam:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByTeam:Ljava/util/List;

    if-eq v2, v3, :cond_e

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByTeam:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByTeam:Ljava/util/List;

    .line 407
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_e
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByOutsideUser:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByOutsideUser:Ljava/util/List;

    if-eq v2, v3, :cond_f

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByOutsideUser:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByOutsideUser:Ljava/util/List;

    .line 408
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_f
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByNotLoggedIn:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByNotLoggedIn:Ljava/util/List;

    if-eq v2, v3, :cond_10

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByNotLoggedIn:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByNotLoggedIn:Ljava/util/List;

    .line 409
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedTotal:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedTotal:Ljava/util/List;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedTotal:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedTotal:Ljava/util/List;

    .line 410
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_11
    move v0, v1

    goto/16 :goto_0

    :cond_12
    move v0, v1

    .line 414
    goto/16 :goto_0
.end method

.method public getActiveSharedFolders1Day()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders1Day:Ljava/util/List;

    return-object v0
.end method

.method public getActiveSharedFolders28Day()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders28Day:Ljava/util/List;

    return-object v0
.end method

.method public getActiveSharedFolders7Day()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders7Day:Ljava/util/List;

    return-object v0
.end method

.method public getActiveUsers1Day()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers1Day:Ljava/util/List;

    return-object v0
.end method

.method public getActiveUsers28Day()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers28Day:Ljava/util/List;

    return-object v0
.end method

.method public getActiveUsers7Day()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers7Day:Ljava/util/List;

    return-object v0
.end method

.method public getAdds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->adds:Ljava/util/List;

    return-object v0
.end method

.method public getDeletes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->deletes:Ljava/util/List;

    return-object v0
.end method

.method public getEdits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->edits:Ljava/util/List;

    return-object v0
.end method

.method public getSharedLinksCreated()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksCreated:Ljava/util/List;

    return-object v0
.end method

.method public getSharedLinksViewedByNotLoggedIn()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByNotLoggedIn:Ljava/util/List;

    return-object v0
.end method

.method public getSharedLinksViewedByOutsideUser()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByOutsideUser:Ljava/util/List;

    return-object v0
.end method

.method public getSharedLinksViewedByTeam()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByTeam:Ljava/util/List;

    return-object v0
.end method

.method public getSharedLinksViewedTotal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedTotal:Ljava/util/List;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 365
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->adds:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->edits:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->deletes:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers28Day:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers7Day:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeUsers1Day:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders28Day:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders7Day:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->activeSharedFolders1Day:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksCreated:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByTeam:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByOutsideUser:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedByNotLoggedIn:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetActivityReport;->sharedLinksViewedTotal:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 381
    invoke-super {p0}, Lcom/dropbox/core/v2/team/BaseDfbReport;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 382
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 420
    sget-object v0, Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 432
    sget-object v0, Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
