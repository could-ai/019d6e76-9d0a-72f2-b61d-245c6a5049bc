import '../models/section.dart';

class ReportData {
  static List<ReportSection> sections = [
    ReportSection(
      id: 1,
      title: '1. Introduction',
      hintText: 'Provide a brief overview of your project, the background, and the motivation behind choosing this topic.',
    ),
    ReportSection(
      id: 2,
      title: '2. Literature Review',
      hintText: 'Summarize existing research, papers, and systems related to your domain. Highlight the gaps your project aims to fill.',
    ),
    ReportSection(
      id: 3,
      title: '3. Problem Statement',
      hintText: 'Clearly define the exact problem or challenge your project is attempting to solve.',
    ),
    ReportSection(
      id: 4,
      title: '4. Objectives',
      hintText: 'List the primary and secondary goals of your project in bullet points.',
    ),
    ReportSection(
      id: 5,
      title: '5. System Architecture',
      hintText: 'Describe the high-level design, components, and data flow of your system. (You can draft the text explanation here).',
    ),
    ReportSection(
      id: 6,
      title: '6. Methodology',
      hintText: 'Explain the step-by-step approach, algorithms, or frameworks you are using to build the solution.',
    ),
    ReportSection(
      id: 7,
      title: '7. Dataset Description',
      hintText: 'Detail the data you are using: source, size, features, preprocessing steps, and any augmentation techniques.',
    ),
    ReportSection(
      id: 8,
      title: '8. Model Design and Implementation',
      hintText: 'Discuss the core logic, machine learning models, or software modules implemented. Include hyperparameters or specific configurations.',
    ),
    ReportSection(
      id: 9,
      title: '9. Results and Discussion',
      hintText: 'Present your findings, accuracy metrics, performance graphs, and an analysis of what the results mean.',
    ),
    ReportSection(
      id: 10,
      title: '10. Advantages and Limitations',
      hintText: 'List the pros of your system and honestly discuss its constraints or scenarios where it might fail.',
    ),
    ReportSection(
      id: 11,
      title: '11. Applications',
      hintText: 'Mention the real-world use cases and industries that can benefit from your project.',
    ),
    ReportSection(
      id: 12,
      title: '12. Future Enhancements',
      hintText: 'Suggest features or improvements that could be added to your project in the future.',
    ),
    ReportSection(
      id: 13,
      title: '13. Conclusion',
      hintText: 'Provide a final summary of the project, reiterating how it met the objectives and solved the problem.',
    ),
    ReportSection(
      id: 14,
      title: '14. References',
      hintText: 'List all the books, papers, websites, and tutorials you referenced during your project (e.g., IEEE format).',
    ),
  ];
}
