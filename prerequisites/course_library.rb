require "forwardable"
require_relative "course"

class CourseLibrary
  include Enumerable
  extend Forwardable

  def_delegators :@courses, :each, :to_a

  def initialize(courses = nil)
    @courses = courses || COURSES
  end

  def [](name)
    @courses.find { |c| c.name.to_s.upcase == name.to_s.upcase }
  end
end

COURSES = [
  Course.new(name: "CIS 0800",
             title: "Learning Computer Basics",
             credit_hours: 3),
  Course.new(name: "CIS 1110",
             title: "Using Computers: An Introduction",
             credit_hours: 2),
  Course.new(name: "CIS 1120",
             title: "The Internet",
             credit_hours: 2),
  Course.new(name: "CIS 1130",
             title: "Windows Basics",
             credit_hours: 2),
  Course.new(name: "CIS 1140",
             title: "Web Technologies & Cloud Computing",
             prerequisites: ["CIS 1150"],
             credit_hours: 3),
  Course.new(name: "CIS 1150",
             title: "Intro to Computer Information Systems",
             credit_hours: 3),
  Course.new(name: "CIS 1160",
             title: "Windows Command Line",
             credit_hours: 2),
  Course.new(name: "CIS 1180",
             title: "Introduction to Networking",
             prerequisites: ["CIS 1150"],
             credit_hours: 3),
  Course.new(name: "CIS 1199",
             title: "Introduction to Game Industry",
             credit_hours: 3),
  Course.new(name: "CIS 1200",
             title: "Game Design",
             credit_hours: 3),
  Course.new(name: "CIS 1201",
             title: "Advanced Game Design",
             credit_hours: 3),
  Course.new(name: "CIS 1205",
             title: "Office Ste SOFTWARE and Integration",
             prerequisites: ["CIS 1150"],
             credit_hours: 3),
  Course.new(name: "CIS 1211",
             title: "2D Game Development",
             credit_hours: 3),
  Course.new(name: "CIS 1221",
             title: "Introduction to Spreadsheets",
             prerequisites: ["CIS 1150"],
             credit_hours: 3),
  Course.new(name: "CIS 1222",
             title: "Advanced Spreadsheets",
             prerequisites: ["CIS 1221"],
             credit_hours: 2),
  Course.new(name: "CIS 1230",
             title: "Microcomputer Database Application",
             prerequisites: ["CIS 1150"],
             credit_hours: 3),
  Course.new(name: "CIS 1240",
             title: "Presentation Graphics - Windows Based",
             prerequisites: ["CIS 1150"],
             credit_hours: 2),
  Course.new(name: "CIS 1250",
             title: "Intro to Project Management Software",
             prerequisites: ["CIS 1150"],
             credit_hours: 2),
  Course.new(name: "CIS 1270",
             title: "IT Proposals and Presentations",
             prerequisites: ["CIS 1150"],
             credit_hours: 2),
  Course.new(name: "CIS 1300",
             title: "Web Design Software",
             prerequisites: ["CIS 1150"],
             credit_hours: 3),
  Course.new(name: "CIS 1310",
             title: "HTML and CSS",
             credit_hours: 3),
  Course.new(name: "CIS 1315",
             title: "Web Development for Educators",
             prerequisites: ["CIS 1150"],
             credit_hours: 3),
  Course.new(name: "CIS 1400",
             title: "Programming Logic and Technique",
             credit_hours: 4),
  Course.new(name: "CIS 1450",
             title: "Intro to Linux/Unix Operating Systems",
             prerequisites: ["CIS 1150"],
             credit_hours: 3),
  Course.new(name: "CIS 1510",
             title: "Graphical User Interface Programming",
             prerequisites: ["CIS 1130", "CIS 1150"],
             credit_hours: 4),
  Course.new(name: "CIS 1600",
             title: "Fundamental Principles Operating Systems",
             credit_hours: 3),
  Course.new(name: "CIS 1610",
             title: "Windows Client OS",
             prerequisites: ["CIS 1180"],
             credit_hours: 3),
  Course.new(name: "CIS 1611",
             title: "Windows Vista Administration",
             prerequisites: ["CIS 1180"],
             credit_hours: 3),
  Course.new(name: "CIS 1620",
             title: "Windows Server OS",
             prerequisites: ["CIS 1610"],
             credit_hours: 3),
  Course.new(name: "CIS 1630",
             title: "Windows Server Active Directory (AD)",
             prerequisites: ["CIS 1620"],
             credit_hours: 3),
  Course.new(name: "CIS 1660",
             title: "Managing Microsoft Windows Server Netwk",
             prerequisites: ["CIS 1620"],
             credit_hours: 3),
  Course.new(name: "CIS 1670",
             title: "Planning a Microsoft Win Server Network",
             prerequisites: ["CIS 1620"],
             credit_hours: 3),
  Course.new(name: "CIS 2211",
             title: "2D Game Scripting",
             credit_hours: 3),
  Course.new(name: "CIS 2212",
             title: "3D Game Development",
             credit_hours: 3),
  Course.new(name: "CIS 2213",
             title: "Advanced 3D Game Development",
             credit_hours: 3),
  Course.new(name: "CIS 2220",
             title: "Game Programming Using C++",
             prerequisites: ["CIS 2542"],
             credit_hours: 3),
  Course.new(name: "CIS 2230",
             title: "Simulation and Serious Game Design",
             credit_hours: 3),
  Course.new(name: "CIS 2240",
             title: "Cross-Platform Game Design",
             credit_hours: 3),
  Course.new(name: "CIS 2250",
             title: "Multiplatform Game Programming",
             prerequisites: ["CIS 2541"],
             credit_hours: 3),
  Course.new(name: "CIS 2252",
             title: "Advanced Multiplatform Game Programming",
             prerequisites: ["CIS 2250"],
             credit_hours: 3),
  Course.new(name: "CIS 2260",
             title: "Game Programming Cross-Platform",
             credit_hours: 3),
  Course.new(name: "CIS 2320",
             title: "JavaScript and Advanced HTML",
             prerequisites: ["CIS 1310", "CIS 1400"],
             credit_hours: 3),
  Course.new(name: "CIS 2330",
             title: "Introduction to XML",
             prerequisites: ["CIS 1310"],
             credit_hours: 3),
  Course.new(name: "CIS 2331",
             title: "Advanced XML",
             prerequisites: ["CIS 2330"],
             credit_hours: 3),
  Course.new(name: "CIS 2335",
             title: "AJAX",
             prerequisites: ["CIS 2320"],
             credit_hours: 4),
  Course.new(name: "CIS 2340",
             title: "Common Gateway Interface (CGI)/Perl",
             prerequisites: ["CIS 1450"],
             credit_hours: 4),
  Course.new(name: "CIS 2350",
             title: "Introduction to ASP.NET",
             prerequisites: ["CIS 1310", "CIS 1400"],
             credit_hours: 4),
  Course.new(name: "CIS 2360",
             title: "Intro to PHP Programming Language",
             prerequisites: ["CIS 1400"],
             credit_hours: 4),
  Course.new(name: "CIS 2411",
             title: "Introduction to COBOL Programming",
             prerequisites: ["CIS 1400"],
             credit_hours: 4),
  Course.new(name: "CIS 2420",
             title: "Microprocessor Assembly Language",
             credit_hours: 4),
  Course.new(name: "CIS 2430",
             title: "Mainframe Assembly Language",
             prerequisites: ["CIS 1400"],
             credit_hours: 4),
  Course.new(name: "CIS 2440",
             title: "Shell Programming for Unix/Linux",
             prerequisites: ["CIS 1450"],
             credit_hours: 3),
  Course.new(name: "CIS 2450",
             title: "UNIX System Administration",
             prerequisites: ["CIS 1450"],
             credit_hours: 3),
  Course.new(name: "CIS 2455",
             title: "LINUX System Administration",
             prerequisites: ["CIS 1450"],
             credit_hours: 3),
  Course.new(name: "CIS 2480",
             title: "FORTRAN for Scientific Programming Appl",
             credit_hours: 3),
  Course.new(name: "CIS 2485",
             title: "C++ for Science and Engineering",
             credit_hours: 3),
  Course.new(name: "CIS 2510",
             title: "Adv Graphical User Interface Programming",
             prerequisites: ["CIS 2510"],
             credit_hours: 4),
  Course.new(name: "CIS 2521",
             title: "Visual Basic .NET I",
             prerequisites: ["CIS 2510"],
             credit_hours: 4),
  Course.new(name: "CIS 2541",
             title: "C++ Language Programming",
             prerequisites: ["CIS 1400"],
             credit_hours: 4),
  Course.new(name: "CIS 2542",
             title: "Adv C++ With Data Structure Application",
             prerequisites: ["CIS 2541"],
             credit_hours: 4),
  Course.new(name: "CIS 2551",
             title: "Introduction to MS Visual C++ .NET Prog",
             prerequisites: ["CIS 2542"],
             credit_hours: 4),
  Course.new(name: "CIS 2552",
             title: "Object-Oriented Program Development With MS Visual C++ .NET",
             prerequisites: ["CIS 2551"],
             credit_hours: 4),
  Course.new(name: "CIS 2561",
             title: "Introduction to C# .NET",
             prerequisites: ["CIS 1510"],
             credit_hours: 4),
  Course.new(name: "CIS 2562",
             title: "Advanced C# Programming",
             prerequisites: ["CIS 2561"],
             credit_hours: 4),
  Course.new(name: "CIS 2571",
             title: "Introduction to Java",
             prerequisites: ["CIS 1400"],
             credit_hours: 4),
  Course.new(name: "CIS 2572",
             title: "Collections in Java",
             prerequisites: ["CIS 2571"],
             credit_hours: 4),
  Course.new(name: "CIS 2573",
             title: "Advanced Java Technologies",
             prerequisites: ["CIS 2572"],
             credit_hours: 4),
  Course.new(name: "CIS 2591",
             title: "Objective C",
             prerequisites: ["CIS 1400"],
             credit_hours: 4),
  Course.new(name: "CIS 2592",
             title: "iPhone/iPad Development",
             prerequisites: ["CIS 2541"],
             credit_hours: 4),
  Course.new(name: "CIS 2593",
             title: "Android Application Development",
             prerequisites: ["CIS 2571"],
             credit_hours: 4),
  Course.new(name: "CIS 2594",
             title: "Adv iPhone/iPad Application Development",
             prerequisites: ["CIS 2592"],
             credit_hours: 4),
  Course.new(name: "CIS 2595",
             title: "Advanced Android Application Development",
             prerequisites: ["CIS 2593"],
             credit_hours: 4),
  Course.new(name: "CIS 2610",
             title: "Network Security",
             prerequisites: ["CIS 1630"],
             credit_hours: 3),
  Course.new(name: "CIS 2620",
             title: "Exchange Server",
             prerequisites: ["CIS 1620"],
             credit_hours: 3),
  Course.new(name: "CIS 2630",
             title: "MS SQL Server Administration",
             prerequisites: ["CIS 1620"],
             credit_hours: 3),
  Course.new(name: "CIS 2650",
             title: "MS SharePoint Portal",
             prerequisites: ["CIS 1620"],
             credit_hours: 3),
  Course.new(name: "CIS 2710",
             title: "Database Management",
             credit_hours: 4),
  Course.new(name: "CIS 2720",
             title: "Structured Query Language (SQL) I",
             prerequisites: ["CIS 1230", "CIS 2710"],
             credit_hours: 3),
  Course.new(name: "CIS 2725",
             title: "Enterprise SQL Application",
             prerequisites: ["CIS 2720"],
             credit_hours: 3),
  Course.new(name: "CIS 2730",
             title: "Enterprise Database Development",
             prerequisites: ["CIS 2720"],
             credit_hours: 3),
  Course.new(name: "CIS 2770",
             title: "Introduction to System Analysis & Design",
             credit_hours: 3),
  Course.new(name: "CIS 2775",
             title: "Information Technlogy Project Management",
             prerequisites: ["CIS 1400"],
             credit_hours: 3),
  Course.new(name: "CIS 2790",
             title: "Systems Analyst Simulation",
             prerequisites: ["CIS 2770"],
             credit_hours: 3)
]
