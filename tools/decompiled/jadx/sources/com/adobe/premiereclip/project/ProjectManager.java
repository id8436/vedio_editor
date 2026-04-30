package com.adobe.premiereclip.project;

import android.util.Log;
import c.a.a.a.a.d.d;
import com.adobe.premiereclip.dcx.DCXProjectFactory;
import com.adobe.premiereclip.dcx.DCXReader;
import com.adobe.premiereclip.dcx.DCXWriter;
import com.adobe.premiereclip.project.sequence.Sequence;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class ProjectManager {
    private static ProjectManager instance;
    private ConcurrentHashMap<String, Project> projectHashMap = new ConcurrentHashMap<>();

    private ProjectManager() {
    }

    public static ProjectManager getInstance() {
        if (instance == null) {
            instance = new ProjectManager();
        }
        return instance;
    }

    public Project createProject(String str, Date date, int i) {
        Project project = new Project(DCXWriter.createBlankProject(str, date, "", i), str, date, new Sequence());
        addProject(project);
        return project;
    }

    public Project createProject(String str, int i) {
        return createProject(str, new Date(), i);
    }

    public Project createProject(String str, Date date, String str2, String str3, String str4, int i) {
        Project project = new Project(str2, str, date, new Sequence());
        project.setEditMode(i);
        if (str3 != null) {
            project.setPosterPath(str3);
            project.setPosterHashValue(str4);
        }
        return project;
    }

    public void addProject(Project project) {
        this.projectHashMap.put(project.projectKey, project);
    }

    public void deleteProjectWithKey(String str) {
        if (getProjectWithKey(str) != null) {
            this.projectHashMap.remove(str);
        }
    }

    public Project getProjectWithKey(String str) {
        return this.projectHashMap.get(str);
    }

    public boolean isProjectAdded(String str) {
        return this.projectHashMap.containsKey(str);
    }

    public ArrayList<Project> getProjectsList() {
        ArrayList<Project> arrayList = new ArrayList<>(this.projectHashMap.values());
        Collections.sort(arrayList, new Comparator<Project>() { // from class: com.adobe.premiereclip.project.ProjectManager.1
            @Override // java.util.Comparator
            public int compare(Project project, Project project2) {
                return project2.getCreationDate().compareTo(project.getCreationDate());
            }
        });
        return arrayList;
    }

    private String createUniqueKey(Date date) {
        String string = Long.toString(date.getTime());
        Log.i("Time", string);
        while (this.projectHashMap.containsKey(string)) {
            string = string + d.ROLL_OVER_FILE_NAME_SEPARATOR;
        }
        return string;
    }

    public void updateProject(Project project) {
        this.projectHashMap.put(project.projectKey, project);
    }

    public void loadSequence(Project project) {
        DCXReader.setSequenceFromDCX(project.projectKey, project.getSequence());
        DCXProjectFactory.handlePreferencesWhenOpeningProjectWithId(project.projectKey);
    }
}
