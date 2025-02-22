# 🖥️ Database Management System Course Notes

**Course Code**: CMP 222 | **Credit Hours**: 3-1-3 | [**Syllabus**](#syllabus-table)  


[![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-brightgreen.svg)](https://github.com/KushalPrasadJoshi/database-management-system/pulls)
![Status](https://img.shields.io/badge/Status-Active-brightgreen)

A structured repository for **Pokhara University's Database Management System** (CMP 222). Contains theory, code examples, practical labs, and project work to help students master Computer Graphics from basics to advanced concepts. This work is an independent effort by **Kushal Prasad Joshi**, inspired by the curriculum of **Pokhara University**, and is intended to support students in their academic journey. While based on the university's course structure, this work is not officially affiliated with or endorsed by **Pokhara University**.

---

## Syllabus table
<table>
  <thead>
    <tr>
      <th>Specific Objectives</th>
      <th>Contents</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Familiarize with basic concepts of database systems, and its architecture.</strong></td>
      <td>
        <strong><a href="/theory/01-introduction/README.md">Unit 1: Introduction</a></strong><br>
        - <a href="/theory/01-introduction/README.md#11-database-purpose">1.1 Database Management System purpose and applications</a><br>
        - <a href="/theory/01-introduction/README.md#12-database-vs-file">1.2 Database Systems vs File Systems</a><br>
        - <a href="/theory/01-introduction/README.md#13-data-abstraction">1.3 View of Data-Data Abstraction (Physical, logical, view level, Data Independence)</a><br>
        - <a href="/theory/01-introduction/README.md#14-instances-schemas">1.4 Instances and Schemas</a><br>
        - <a href="/theory/01-introduction/README.md#15-database-languages">1.5 Database Languages (DDL, DML, DCL)</a><br>
        - <a href="/theory/01-introduction/README.md#16-architecture">1.6 Database and Application Architecture (two-tier and three-tier)</a>
      </td>
    </tr>
    <tr>
      <td><strong>Familiarize with ER Model and Relational Model and relational algebra.</strong></td>
      <td>
        <strong><a href="/theory/02-er-relational-model/README.md">Unit 2: ER and Relational Model</a></strong><br>
        - <a href="/theory/02-er-relational-model/README.md#21-er-intro">2.1 Introduction to ER Model</a><br>
        - <a href="/theory/02-er-relational-model/README.md#22-entity-relationships">2.2 Entity sets, attributes, relationship sets (participation, roles, descriptive attributes, degree)</a><br>
        - <a href="/theory/02-er-relational-model/README.md#23-keys-entity-sets">2.3 Keys (Super key, Candidate key, Primary key), Strong/Weak Entity Sets</a><br>
        - <a href="/theory/02-er-relational-model/README.md#24-relational-model">2.4 Introduction to Relational Model</a><br>
        - <a href="/theory/02-er-relational-model/README.md#25-er-to-relational">2.5 Reducing ER diagrams to Relational Schema</a><br>
        - <a href="/theory/02-er-relational-model/README.md#26-relational-algebra">2.6 Relational Algebra</a>
      </td>
    </tr>
    <tr>
      <td><strong>Implement and write DDL and DML queries in SQL.</strong></td>
      <td>
        <strong><a href="/theory/03-sql/README.md">Unit 3: Structured Query Language</a></strong><br>
        - <a href="/theory/03-sql/README.md#31-sql-basics">3.1 SQL DDL and DML</a><br>
        - <a href="/theory/03-sql/README.md#32-sql-operations">3.2 Basic SQL Operations (Rename, String, Order By, Where)</a><br>
        - <a href="/theory/03-sql/README.md#33-nested-queries">3.3 Nested Queries</a><br>
        - <a href="/theory/03-sql/README.md#34-joins">3.4 Join Expressions (Natural Join, Outer Joins)</a><br>
        - <a href="/theory/03-sql/README.md#35-database-modification">3.5 Database Modification (Delete, Insert, Update)</a><br>
        - <a href="/theory/03-sql/README.md#36-views-procedures">3.6 Views, Stored Procedures</a>
      </td>
    </tr>
    <tr>
      <td><strong>Apply integrity constraints to implement database security and normalize the database.</strong></td>
      <td>
        <strong><a href="/theory/04-relational-design/README.md">Unit 4: Relational Database Design</a></strong><br>
        - <a href="/theory/04-relational-design/README.md#41-integrity-constraints">4.1 Integrity Constraints (Domain, Entity, Referential, Assertions, Triggers)</a><br>
        - <a href="/theory/04-relational-design/README.md#42-good-designs">4.2 Features of Good Relational Designs</a><br>
        - <a href="/theory/04-relational-design/README.md#43-functional-dependencies">4.3 Functional Dependencies and Armstrong's Axioms</a><br>
        - <a href="/theory/04-relational-design/README.md#44-closure">4.4 Closure of Functional Dependencies</a><br>
        - <a href="/theory/04-relational-design/README.md#45-normalization">4.5 Normalization (1NF, 2NF, 3NF, BCNF)</a><br>
        - <a href="/theory/04-relational-design/README.md#46-denormalization">4.6 Denormalization for Performance</a>
      </td>
    </tr>
    <tr>
      <td><strong>Understand database security, access control, and encryption mechanisms.</strong></td>
      <td>
        <strong><a href="/theory/05-security/README.md">Unit 5: Security</a></strong><br>
        - <a href="/theory/05-security/README.md#51-violations">5.1 Security and Integrity Violations</a><br>
        - <a href="/theory/05-security/README.md#52-access-control">5.2 Access Control</a><br>
        - <a href="/theory/05-security/README.md#53-authorization">5.3 Authorization</a><br>
        - <a href="/theory/05-security/README.md#54-security-views">5.4 Security and Views</a>
      </td>
    </tr>
    <tr>
      <td><strong>Understand query processing and optimization.</strong></td>
      <td>
        <strong><a href="/theory/06-query-processing/README.md">Unit 6: Query Processing and Optimization</a></strong><br>
        - <a href="/theory/06-query-processing/README.md#61-query-processing">6.1 Query Processing Introduction</a><br>
        - <a href="/theory/06-query-processing/README.md#62-equivalence">6.2 Equivalence of Expressions</a><br>
        - <a href="/theory/06-query-processing/README.md#63-cost-estimation">6.3 Query Cost Estimation</a><br>
        - <a href="/theory/06-query-processing/README.md#64-optimization">6.4 Query Optimization</a><br>
        - <a href="/theory/06-query-processing/README.md#65-execution-plan">6.5 Query Evaluation and Execution Plan</a>
      </td>
    </tr>
  </tbody>
</table>

---

## 📜 License
**All Rights Reserved**  
This repository is for personal, educational, and non-commercial use only. Modifying, distributing, or using this content for commercial purposes is strictly prohibited without explicit permission. Please refer to the [LICENSE](LICENSE) file for further details.  

---

**Happy Reading!** 🎉